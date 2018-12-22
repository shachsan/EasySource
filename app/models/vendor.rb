class Vendor < ApplicationRecord
    has_many :vendor_products
    has_many :products, through: :vendor_products
    has_many :orders
    has_many :accounts
    has_many :buyers, through: :accounts
    has_many :buyers, through: :orders
end
