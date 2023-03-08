class Event < ApplicationRecord
  has_many :events_chatrooms
  has_many :users, through: :events_chatrooms
  has_one_attached :photo
end
