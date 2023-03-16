class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def my_events
  end

  def profile
    @user_events = UserEvent.where(user: current_user)
    @friendships = Friendship.where(user: current_user).or(Friendship.where(friend: current_user))
  end

  def videocall
    @chatroom = Chatroom.where(params[:chatroom_id])
  end
end
