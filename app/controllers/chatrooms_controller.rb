class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @event = Event.find(params[:event_id])
    @message = Message.new
  end
end
