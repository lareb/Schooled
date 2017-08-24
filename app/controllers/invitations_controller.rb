class InvitationsController < ApplicationController
  def new
    @invite = Invitation.new
  end

  def create
    Invitation.create!(invitation_params)
  end

  def destroy
    @invitation = Invitation.find(params[:id])

    InvitationAccepter.new(@invitation).save! if accept?

    @invitation.destroy!
  end

  private

  def invitation_params
    params.require(:invitation)
          .permit(:group_id, :identification, :phone_number, :address)
          .merge(user_id: current_user.id)
  end

  def accept?
    params.require(:accept)
  end
end
