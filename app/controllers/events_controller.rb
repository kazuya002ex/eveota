class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      success
    else
      error
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def event_params
      params.require(:event).permit(:name, :start_time, :opening_time, :performance_date)
    end

    def set_event
      @event = Event.find(params[:id])
    end
end
