class MessagesController < ApplicationController

  def create
    @recipients = params[:send_message][:receiver_class] == 'CourseGroup' ? 
       CourseGroup.where(id: Array(params[:send_message][:recipients])) :
       User.where(id: Array(params[:send_message][:recipients]))

    @receipt = current_user.send_message(@recipients, params[:send_message][:body], params[:send_message][:subject])
    
    respond_to do |format|
      if (@receipt.errors.blank?)
        @conversation = @receipt.conversation
        format.html { redirect_to @course_group, notice: 'Successfully created.' }
        format.js
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end


end