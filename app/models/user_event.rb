class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :event, uniqueness: true
end
