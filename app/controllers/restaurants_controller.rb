class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  # def index
  #   @restaurants = Restaurant.all
  #   @category = params[:category]
  #   if @category
  #     @restaurants = Restaurant.select {|r| r[:category] == @category}
  #   else
  #     @restaurants = Restaurant.all
  #   end
  # end

  # def create
  #   @restaurant = Restaurant.new(name: params[:name], city: params[:city])
  #   @restaurant.save
  # end

  # def show
  #   id = params[:id].to_i
  #   @restaurant = Restaurant.all[id]
  # end
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.rating = 0
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
