class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.find(params[:id])
    @restaurants.save
  end
end
