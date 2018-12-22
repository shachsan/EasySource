class Buyer < ApplicationRecord
    has_many :orders
    has_many :accounts
    has_many :vendors, through: :accounts
    has_many :vendors, through: :orders
end
