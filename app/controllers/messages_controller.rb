class MessagesController < ApplicationController

 def index
  @messages=Message.all
 end

 def new 
  @message=Message.new
 end

 def create
  @message=Message.new(message_params)
  if @message.save redirect_to messages_path
  else redirect_to new_message_path
 end

 def message_param
  params.require(:message).permit(:name,:title,:content)
 end
end
