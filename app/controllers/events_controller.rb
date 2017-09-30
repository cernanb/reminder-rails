class EventsController < ApplicationController
  def new
    @child = Child.find(params[:child_id])
  end
end
