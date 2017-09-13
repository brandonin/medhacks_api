class InfoController < ApplicationController

  # GET /info
  def index
    @immunizations = Immunization.all
    @medications = Medication.all
    @appointments = Appointment.all
    @referrals = Referral.all
    @testers = Tester.all

    render json: {:immunization => @immunizations,
                     :medication => @medications,
                     :appointment => @appointments,
                     :referral => @referrals,
                     :tester => @testers
                    }
  end

  # POST /immunizations
  def create
    infoLabel = ['Immunization', 'Medication', 'Appointment', 'Referral', 'Tester']
    infoLabel.each do |info|
      if params[info]
        puts params[info].class
        @variableToSave = eval(info).new(eval(params[info]))
      end
    end

    if @variableToSave.save
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
