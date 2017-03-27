class ToursController < ApplicationController
  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
    @reservation = @tour.reservations.build
    respond_to do |format|
      format.html
      format.json { render json: @tour }
    end
  end
end
