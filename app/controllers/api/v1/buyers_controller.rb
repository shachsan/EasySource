class Api::V1::BuyersController < ApplicationController
  
    def index
        @buyers=Buyer.all
        render json: @buyers
    end

    def show

    end 
end
