class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurants.all
  end

  def your_action
  end

  def new
    @restaurant = Restaurants.new
  end

  def create
    @restaurant = Restaurants.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def show
    @restaurant = Restaurants.find(params[:id])
    @reviews = @restaurant.reviews
  end


end
