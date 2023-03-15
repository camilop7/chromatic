class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_events = UserEvent.where(user: @user)
    @friendships = Friendship.where(user: @user).or(Friendship.where(friend: @user))

  end
end
