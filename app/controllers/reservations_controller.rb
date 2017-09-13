class ReservationsController < ApplicationController

  def index
    # @reservations = Reservation.all
    render "index.html.erb"
  end


end
