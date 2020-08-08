class MessagesController < ApplicationController

  def index
    @messages = Message.all.order(created_at: "DESC")
    @message = Message.new
  end

  def create
    Message.create(message_params)
    redirect_to messages_path
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy
    redirect_to messages_path
  end

  private

    def message_params
      params.require(:message).permit(:text, :image)
    end

end
