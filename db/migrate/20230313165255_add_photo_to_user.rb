class AddPhotoToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar_img, :string
  end
end
