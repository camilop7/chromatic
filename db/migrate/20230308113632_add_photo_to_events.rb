class AddPhotoToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :photo_url, :string
  end
end
