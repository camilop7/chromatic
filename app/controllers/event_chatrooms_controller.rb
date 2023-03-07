class EventChatroomsController < ApplicationController
  def new
    @event_chatroom = EventChatroom.new
  end

  def index
    @event_chatroom = EventChatroom.all
  end

  def show
    @event_chatroom = EventChatroom.find(params[:id])
    @message = Message.new
  end
end
