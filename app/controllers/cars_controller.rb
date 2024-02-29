class CarsController < ApplicationController
  def index
    @cars = Car.all
    @cars = @cars.where("brand ILIKE ? OR model ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%") if params[:query].present?
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car
    else
      render :new # status: unprocesable_entity
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit
    end
  end

  def destroy
    car.destroy
    redirect_to @car
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :year, :cost_per_day)
  end
end
