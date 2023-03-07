class MessagesController < ApplicationController
  class MessagesController < ApplicationController
    def create
      @event_chatroom = EventChatroom.find(params[:event_chatroom_id])
      @message = Message.new(message_params)
      @message.event_chatroom = @event_chatroom
      @message.user = current_user
      if @message.save
        redirect_to event_chatroom_path(@event_chatroom)
      else
        render "event_chatrooms/show", status: :unprocessable_entity
      end
    end

    private

    def message_params
      params.require(:message).permit(:content)
    end
  end

end
