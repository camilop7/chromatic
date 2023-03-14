class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :chatrooms
  has_many :events, through: :user_events
  has_many :messages
  has_many :friendships

  def is_a_friend?(user)
    Friendship.where(user: self, friend: user).or(Friendship.where(user: user, friend: self)).any?
  end
end
