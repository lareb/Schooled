class InvitationsController < ApplicationController
  def new
    @invite = Invitation.new
    render :new
  end

  def create
    Invitation.create!(invitation_params)
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    if params[:accept]
      assign_invitation(student, invitation)
    end

    @invitation.destroy!
  end

  private

  def assign_invitation(student, invitation)
    student = invitation.student
    student.group_id = invitation.group_id
    student.address = invitation.address
    student.phone_number = invitation.phone_number
    student.identification = invitation.identification
  end

  def invitation_params
    params.require(:invitation)
          .permit(:group_id, :identification, :phone_number, :address)
          .merge(user_id: current_user.id)
  end
end
