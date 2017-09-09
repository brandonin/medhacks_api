class ImmunizationsController < ApplicationController
  # skip_before_action :verify_authenticity_token, :only => [:show, :update, :destroy]
  before_action :set_immunization, only: [:show, :update, :destroy]

  # GET /immunizations
  def index
    @immunizations = Immunization.all

    render json: @immunizations
  end

  # GET /immunizations/1
  def show
    render json: @immunization
  end

  # POST /immunizations
  def create
    @immunization = Immunization.new(immunization_params)

    if @immunization.save
      render json: @immunization, status: :created, location: @immunization
    else
      render json: @immunization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /immunizations/1
  def update
    if @immunization.update(immunization_params)
      render json: @immunization
    else
      render json: @immunization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /immunizations/1
  def destroy
    @immunization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_immunization
      @immunization = Immunization.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def immunization_params
      params.require(:immunization).permit(:name, :dosage, :givenBy, :givenDate)
    end
end
