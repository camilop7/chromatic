class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id], status: 'pending')
    if @friendship.save
      flash[:notice] = "Friend request sent."
      redirect_to users_path
    else
      flash[:alert] = "Error sending friend request."
      redirect_to users_path
    end
  end
  def update
    @friendship = Friendship.find(params[:id])
    if params[:status] == 'accepted'
      @friendship.update_attributes(status: 'accepted')
      flash[:notice] = "Friendship accepted."
    else
      @friendship.destroy
      flash[:notice] = "Friendship declined."
    end
    redirect_to current_user
  end
  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Friendship removed."
    redirect_to current_user
  end

  def index
    @friendships = current_user.friendships
  end
end
