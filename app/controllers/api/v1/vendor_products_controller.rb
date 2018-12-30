class Api::V1::VendorProductsController < ApplicationController
    before_action :find_vp, only:[:update, :destroy]

    def update
        @vp.update(vp_params)
    end

    def create
        @vp=VendorProduct.create!(vp_params)
        render json: @vp
    end

    def destroy
        @vp.destroy
        render json: @vp
    end

    private
    def find_vp
        @vp=VendorProduct.find(params[:id])
    end

    def vp_params
        params.permit(:v_item, :case_price, :product_id, :vendor_id, :inventory, :exp_date)
    end
end
