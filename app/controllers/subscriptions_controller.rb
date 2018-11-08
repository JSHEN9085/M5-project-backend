class SubscriptionsController < ApplicationController
  def index
    @chat = Chat.find(params[:chat_id])
    @subscriptions = Subscription.all.where(chat_id: @chat.id)
    render json: @subscriptions
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @chat = Chat.find(subscription_params[:chat_id])
    @user = User.find(subscription_params[:user_id])
    if @subscription.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        UserSerializer.new(@user)
      ).serializable_hash
      SubscriptionsChannel.broadcast_to @chat, serialized_data
      head :ok
    end
  end

  def destroy
    @chat = Chat.find(params[:chat_id])
    @user = User.find(params[:user_id])
    @subscriptions = @chat.subscriptions
    @subscription = @subscriptions.where(user_id: params[:user_id])
    @subscription.destroy_all
    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      UserSerializer.new(@user)
    ).serializable_hash
    SubscriptionsChannel.broadcast_to @chat, serialized_data
    head :ok
  end

private

  def subscription_params
    params.require(:subscription).permit(:user_id, :chat_id)
  end
end
