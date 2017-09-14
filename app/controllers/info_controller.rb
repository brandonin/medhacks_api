class InfoController < ApplicationController

  # GET /info
  def index
    @immunizations = Immunization.all
    @medications = Medication.all
    @appointments = Appointment.all
    @referrals = Referral.all
    @testers = Tester.all

    render json: {:immunizations => @immunizations,
                     :medications => @medications,
                     :appointments => @appointments,
                     :referrals => @referrals,
                     :testers => @testers
                    }
  end

  # POST /info
  def create
    @info = eval(params[:type]).create(log: params[:log])
    puts @info
    render json: {@info => @info, :type => params[:type]}, status: :created, location: @info
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_immunization
      @immunization = Immunization.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def info_params
      params.require(:info).permit(:log)
    end
end
