class Product < ApplicationRecord
  belongs_to :category
  has_many :order_products
  has_many :orders, through: :order_products
  has_many :vendor_products
  has_many :vendors, through: :vendor_products
end
