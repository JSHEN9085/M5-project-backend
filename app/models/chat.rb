class Chat < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :subscriptions
  has_many :users, through: :subscriptions
  belongs_to :creator, :class_name => "User"
end
