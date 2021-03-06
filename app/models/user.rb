class User < ApplicationRecord
  # has_many :friendships
  # has_many :friends, through: :friendships
  # has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  # has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :firstname, presence: true
  validates :password, presence: true

  has_many :messages
	has_many :subscriptions
	has_many :chats, through: :subscriptions
  has_many :created_chat, :class_name => "Chat", :foreign_key => "creator_id"

end


# consider making friendship after graduation
# class Friendship < ApplicationRecord
#   belongs_to :user
#   belongs_to :friend, :class_name => "User"
# end
