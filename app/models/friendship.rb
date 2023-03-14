class Friendship < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :friend, class_name: "User"

  def other_user(user)
    if self.user == user
      friend
    else
      self.user
    end
  end
end
