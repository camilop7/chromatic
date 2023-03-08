class Event < ApplicationRecord
  has_many :events_chatrooms
  has_many :users, through: :events_chatrooms
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
