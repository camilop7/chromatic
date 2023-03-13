class UserEventsController < ApplicationController
  def create
    @my_event = UserEvent.new
    @event = Event.find(params[:event_id])
    @my_event.event = @event
    @my_event.user = current_user
    @my_event.save!

    redirect_to profile_path
  end

  def destroy
    @user_event = UserEvent.find(params[:id])
    @event = @user_event.event
    @user_event.destroy!
    redirect_to @event
  end
end
