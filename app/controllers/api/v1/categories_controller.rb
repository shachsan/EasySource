class Api::V1::CategoriesController < ApplicationController
  def index
    @categories=Category.all 
    render json: @categories
  end

  def show
  end
end
