class CarController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit

    @producers = Producer.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(params[:cr_model, :cr_year, :cr_usage, :cr_fuel, :producer_id])

    if @car.save
      redirect_to @car
    else
      render :new
    end
  end

end
