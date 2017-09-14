class TestersController < ApplicationController
  # skip_before_action :verify_authenticity_token, :only => [:show, :update, :destroy]
  before_action :set_tester, only: [:show, :update, :destroy]

  # GET /testers
  def index
    @testers = Tester.all

    render json: @testers
  end

  # GET /testers/1
  def show
    render json: @tester
  end

  # POST /testers
  def create
    @tester = Tester.new(tester_params)

    if @tester.save
      render json: @tester, status: :created, location: @tester
    else
      render json: @tester.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /testers/1
  def update
    if @tester.update(tester_params)
      render json: @tester
    else
      render json: @tester.errors, status: :unprocessable_entity
    end
  end

  # DELETE /testers/1
  def destroy
    @tester.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tester
      @tester = Tester.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tester_params
      params.require(:tester).permit(:doctor, :startDate, :expirationDate, :numberOfVisits)
    end
end
