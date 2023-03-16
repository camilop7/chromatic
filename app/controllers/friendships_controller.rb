class FriendshipsController < ApplicationController
  def index
    @friendships = current_user.friendships
  end

  def create
    @friendship = Friendship.new(friendship_params)
    @friendship.user = current_user

    if @friendship.save!
      flash[:notice] = "Friend request sent."
      redirect_to profile_path
    else
      flash[:alert] = "Error sending friend request."
      render 'chatroom/show'
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Friendship removed."
    redirect_to profile_path
  end

  def show
    @friend = User.find(params[:id])
  end


  private

  def friendship_params
    params.require(:friendship).permit(:friend_id)
  end


end
