class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = current_customer.vehicles.build
  end

  def show
    @vehicle = set_vehicle
    @assignment = Assignment.new
  end

  private

  def set_vehicle
    Vehicle.find(params[:id])
  end
end
