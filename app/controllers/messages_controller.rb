class MessagesController < ApplicationController

  def create
    debugger
    @recipients = params[:send_message][:recipients]

    @receipt = current_user.send_message(@recipients, params[:send_message][:body], params[:send_message][:subject])
    if (@receipt.errors.blank?)
      @conversation = @receipt.conversation
      flash[:success]= t('mailboxer.sent')
    else
      render :action => :new
    end
  end


end