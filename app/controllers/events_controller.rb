# encoding: utf-8
class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    flash.keep
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        flash[:notice] = "Evénement créé"
        format.html { redirect_to events_path }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        flash[:notice] = "Evénement mis à jour"
        format.html { redirect_to events_path }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      flash[:notice] = "Evénement supprimé"
      format.html { redirect_to events_url }
    end
  end
end
