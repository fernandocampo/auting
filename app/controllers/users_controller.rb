class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @cars = @user.cars
  end

  def my_cars
    @cars = current_user.cars
  end

end
