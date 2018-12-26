class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :has_min, :min_amount, :products
  # :has_min, :min_amount, :price, :inventory
  # has_many :products
  # has_many :vendor_products, include: :products
  # has_many :vendor_products

  def products
    # object.products
    object.vendor_products
  end
  

end
