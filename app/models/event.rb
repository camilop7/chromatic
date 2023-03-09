class Event < ApplicationRecord
  has_one :chatroom
  has_many :users, through: :chatrooms
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
