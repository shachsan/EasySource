class Api::V1::ProductsController < ApplicationController
    before_action :find_product, only:[:show, :update]

    def index
        @products = Product.all 
        render json: @products
    end

    def show
        render json: @product
    end 

    def create
        @product=Product.create!(product_params)
        render json: @product
    end

    def update
        @product.update(product_params)
    end 

    private
    def product_params
        params.permit(:barcode, :name, :size, :case_pack, :brand, :category_id, :img_url)
    end

    def find_product
        @product = Product.find(params[:id])
    end 

end
