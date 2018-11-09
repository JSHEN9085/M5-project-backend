class MessageSerializer < ActiveModel::Serializer
  attributes :id, :chat_id, :content, :created_at, :user_id
  belongs_to :user
end
