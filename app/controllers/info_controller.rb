class InfoController < ApplicationController

  # GET /info
  def index
    @immunizations = Immunization.all
    @medications = Medication.all
    @appointments = Appointment.all
    @referrals = Referral.all

    render json: => {:immunization => @immunizations,
                     :medication => @medications,
                     :appointment => @appointments,
                     :referrals => @referrals
                    }
  end

  # POST /immunizations
  def create
    infoLabel = ['Immunization', 'Medication', 'Appointment', 'Referral']
    infoLabel.each do |info|
      if params[info]
        @variableToSave = info.new(params[info])
      end

    if variableToSave.save
      render json: @variableToSave, status: :created, location: @variableToSave
    else
      render json: @variableToSave.errors, status: :unprocessable_entity
    end
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
