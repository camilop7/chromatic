class Message < ApplicationRecord
  belongs_to :event_chatroom
  belongs_to :user
end
