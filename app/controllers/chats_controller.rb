class ChatsController < ApplicationController

  def index
    @chats = Chat.all
    render json: @chats
  end

  # def show
  #   @chat = Chat.find(params[:id])
  #   render json: @chat
  # end
  #create for testing

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        ChatSerializer.new(@chat)
      ).serializable_hash
      ActionCable.server.broadcast 'chats_channel', serialized_data
      head :ok
    end
  end

private

  def chat_params
    params.require(:chat).permit(:topic, :creator_id)
  end

end
