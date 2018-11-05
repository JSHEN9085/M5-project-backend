class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all
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

private

  def subscription_params
    params.require(:subscription).permit(:user_id, :chat_id)
  end
end
