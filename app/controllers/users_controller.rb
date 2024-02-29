class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @cars = @user.cars
    @booking = @user.bookings.last
  end

  def my_cars
    @cars = current_user.cars
  end

end
