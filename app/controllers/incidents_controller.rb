# frozen_string_literal: true

class IncidentsController < ApplicationController
  before_action :set_incident, only: %i[show update destroy]

  # GET /incidents (all)
  def index
    @incidents = Incident.all

    render json: @incidents
  end

  # GET /incidents for a specific user
  def my_incidents
    @incidents = current_user.incidents.all?

    render json: @incidents
  end

  # GET /incidents/1
  def show
    render json: @incident
  end

  # POST /incidents
  def create
    @incident = current_user.incidents.build(incident_params)

    if @incident.save
      render json: @incident, status: :created, location: @incident
    else
      render json: @incident.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /incidents/1
  def update
    if @incident.update(incident_params)
      render json: @incident
    else
      render json: @incident.errors, status: :unprocessable_entity
    end
  end

  # DELETE /incidents/1
  def destroy
    @incident.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_incident
    @incident = current_user.incidents.find(param[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def incident_params
    params.require(:incident).permit(:name, :location, :date, :robbery_type, :description, :user_id)
  end
end
