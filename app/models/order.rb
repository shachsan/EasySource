class Order < ApplicationRecord
  belongs_to :buyer
  belongs_to :vendor
  has_many :order_products
  has_many :products, through: :order_products
end
