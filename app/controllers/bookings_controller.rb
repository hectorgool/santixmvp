class BookingsController < ApplicationController
  before_action :set_tour
  before_filter :authenticate_user!, only: [:create] #beta

  def index
    @bookings = Booking.last(12).reverse
  end

  def new
    @booking = @tour.bookings.build
  end

  def show
    @booking = Booking.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @booking }
    end
  end

  def create
    @booking = @tour.bookings.build(booking_params)
    @booking.user = current_user
    if @booking.save
      flash[:notice] = "Booking has been created."
      redirect_to [@tour, @booking]
    else
      flash.now[:alert] = "Booking has not been created."
      render "new"
    end
  end

  def edit
    @booking.attachments.build
  end

  def update
    if @booking.update(booking_params)
      flash[:notice] = "Booking has been updated."
      redirect_to @booking
    else
      flash.now[:alert] = "Booking has not been updated."
      render "edit"
    end
  end

  def destroy
    @booking.destroy
    flash[:notice] = "Booking has been deleted."
    redirect_to bookings_path
  end

  private

    def set_booking
      @booking = @tour.bookings.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The booking you were looking for could not be found."
      redirect_to bookings_path
    end

    def booking_params
      params.require(:booking).permit(:customers, :date, :time)
    end

    def set_tour
      @tour = Tour.find(params[:tour_id])
    end
end
