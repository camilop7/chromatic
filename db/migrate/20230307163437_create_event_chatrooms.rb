class CreateEventChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :event_chatrooms do |t|
      t.string :name
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
