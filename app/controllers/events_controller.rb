class EventsController < ApplicationController
  def index
    @child = Child.find(params[:child_id])
    @past_events = @child.past_events
    @future_events = @child.future_events
  end
  def new
    @child = Child.find(params[:child_id])
    @event = @child.events.build
  end

  def create
    @child = Child.find(params[:child_id])
    @event = @child.events.build(event_params)

    if @event.save
      redirect_to child_events_path(@child)
    end
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  private
    def event_params
      params.require(:event).permit(:start_time, :end_time, :name, :caretaker_id)
    end
end
