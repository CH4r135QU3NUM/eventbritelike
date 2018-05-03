class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.creator_id = current_user.id
    @event.save
    redirect_to user_path(current_user)
  end

  def show
    @event = Event.find(params[:id])
  end
  
  def index
    @events = Event.all
  end

  def event_params
    params.require(:event).permit(:description, :date, :place)
  end
end
