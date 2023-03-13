class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def my_events
  end

  def profile
    @user_events = UserEvent.where(user: current_user)
    @friendships = Friendship.where(user: current_user).or(Friendship.where(friend: current_user))
    friend_ids = @friendships.map do |friendship|
      if friendship.user == current_user
        friendship.friend_id
      else
        friendship.user_id
      end
    end
    @friends = User.where(id: friend_ids)
  end

end
