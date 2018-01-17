class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @category = params[:category]
    if @category
      @restaurants = Restaurant.select {|r| r[:category] == @category}
    else
      @restaurants = Restaurant.all
    end
  end

  def create
    @restaurant = Restaurant.new(name: params[:name], city: params[:city])
    @restaurant.save
  end

  def show
    id = params[:id].to_i
    @restaurant = Restaurant.all[id]
  end
end
