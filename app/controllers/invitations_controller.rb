class InvitationsController < ApplicationController
  def show

  end

  def destroy
    @invitation = Invitation.find(params[:id])

    InvitationAccepter.new(@invitation).save! if accept?

    @invitation.destroy!
  end

  private
  def accept?
    params.require(:accept)
  end
end
