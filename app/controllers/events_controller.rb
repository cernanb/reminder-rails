class EventsController < ApplicationController
  def new
    @child = Child.find(params[:child_id])
    @event = @child.events.build
  end
end
