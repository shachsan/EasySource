class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :has_min, :min_amount
  # :has_min, :min_amount, :price, :inventory
  # has_many :products
  has_many :vendor_products
  has_many :products

  # def products
  #   object.vendor_products.case_price
  # end
  

end
