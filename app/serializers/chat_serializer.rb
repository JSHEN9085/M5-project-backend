class ChatSerializer < ActiveModel::Serializer
  attributes :id, :topic, :description, :created_at
  has_many :messages
  has_many :users, through: :subscriptions
  belongs_to :creator, :class_name => "User"
end
