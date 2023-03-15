class Event < ApplicationRecord
  has_one :chatroom, dependent: :destroy
  has_many :users, through: :user_events
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
