class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = @user.booking.last
  end
end
