class DropEventChatrooms < ActiveRecord::Migration[7.0]
  def change
    drop_table :event_chatrooms
  end
end
