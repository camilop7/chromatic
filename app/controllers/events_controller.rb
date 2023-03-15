class EventsController < ApplicationController
  before_action :find_event, only: %i[show edit update destroy]

    # @events = Event.all
    # @events = Event.where(venue: "%london%")
  def index
    @events = Event.all
    @events = @events.where("address ILIKE ?", "%#{params[:city]}%") if params[:city].present?
    @events = @events.where(date: params[:date]) if params[:date].present?
    @events = @events.where(genre: params[:genre]) if params[:genre].present?
  end

  def show
    @event = Event.find(params[:id])
    @user_event = UserEvent.find_by(event: @event, user: current_user)

    @markers = [{
        lat: @event.latitude,
        lng: @event.longitude
      }]
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

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :address, :date, :artist, :photo_url)
  end
end
