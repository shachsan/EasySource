class Api::V1::BuyersController < ApplicationController
  
    def index
        @buyers=Buyer.all
        render json: @buyers
    end

    def show

    end 

    def create
        @buyer=Buyer.create!(buyer_params)
        render json: @buyer
    end

    private 
    def buyer_params
        params.permit(:username, :email, :name, :address_st, :city, :zipcode, :phone)
    end
end
