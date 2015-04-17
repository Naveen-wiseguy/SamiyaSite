class MessagesController < ApplicationController

 def index
  @messages=Message.all
 end

 def new 
  @message=Message.new
 end

 def create
  @message=Message.new(message_param)
  if @message.save 
    redirect_to root_path, alert: "Thank you ! Much appreciated !"
  else 
    redirect_to new_message_path
  end
 end

 def message_param
  params.require(:message).permit(:name,:title,:content)
 end
end
