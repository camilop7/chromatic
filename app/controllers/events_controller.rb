class EventsController < ApplicationController
  before_action :find_events, only: %i[show edit update destroy]

    # @events = Event.all
    # @events = Event.where(venue: "%london%")
  def index
    if params[:address].present?
      @events = Event.where("address ILIKE ?", "%#{params[:address]}%")
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])

    @markers = [{
        lat: @event.latitude,
        lng: @event.longitude
      }]
  end

  def create_user_event
    @my_event = UserEvent.new
    @event = Event.find(params[:event_id])
    @user = current_user
    @my_event.event = @event
    @my_event.user = @user
    @my_event.save!
  end

  def new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @event.update(params[event_params])
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    redirect_to event_path, status: :see_other
  end

  private

  def find_events
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :address, :date, :artist, :photo_url)
  end
end
