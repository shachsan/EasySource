class ProductSerializer < ActiveModel::Serializer
  attributes :id, :barcode, :name, :size, :brand, :img_url

  has_many :vendor_products
  # has_many :vendors
end
