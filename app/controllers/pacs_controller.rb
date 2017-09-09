class PacsController < ApplicationController
  def generateToken
    invite = Invitation.new(invitation_params)
    invite.save
    render json: {:token => invite.auth_token}
  end

  def viewer
    pacs = Invitation.where(auth_token: params[:token]).where(pin: params[:pin])

    if pacs.first
      render json: {:url => "http://localhost:8042/osimis-viewer/app/index.html?study=7e3a98bb-9acc8a9d-82dea211-2c0e226a-b846dc26"}
    else
      render json: {:errors => "The pair was wrong"}, status: 400
    end
  end

  private

  def invitation_params
    params.require(:pac).permit(:token, :pin)
  end
end
