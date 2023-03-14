class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @event = Event.find(params[:event_id])
    @message = Message.new
    @all_the_people = Message.where(chatroom: @chatroom).map { |record| record.user }.uniq
  end
end
