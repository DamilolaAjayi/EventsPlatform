class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]

  def new
    @event = Event.new
  end

  def edit
  end

  def destroy
    @event.destroy

    redirect_to events_path
  end

  def create
    @event = Event.new(event_params)
    if(@event.save)
      #testing the fee/paid event highlight feature wtih the below code
      #@costTracker = CostTracker.find_by(fee: params[:fee])
 
        redirect_to '/events'
    else
        render 'new'
    end
  end

  def index
    @events = Event.all
  end

  def show
  end

  def update
    if(@event.update(event_params))
        redirect_to @event
    else
        render 'edit'
    end
  end

  private 
  
  def event_params 
    params.require(:event).permit(:title, :details, :location, :start_date, :end_date, :fee)
  end
    
  def find_event
    @event = Event.find(params[:id])
  end
end
