class Api::V1::VendorsController < ApplicationController
    before_action :find_vendor, only: [:show, :update]

    def show
        render json: @vendor
    end

    def update
        @vendor.update(vendor_params)
        if @vendor.save
            render json: @vendor, status: :accepted
        else
            render json: {errors: @vendor.errors.full_messages}, status: :unprocessible_entity 
        end
    end

    private
    def find_vendor
        @vendor = Vendor.find(params[:id])
    end

    def vendor_params
        params.permit(:username, :email, :address_st, :city, :zipcode, :phone, :has_min, :min_amount)
    end
end
