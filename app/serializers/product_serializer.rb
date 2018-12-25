class ProductSerializer < ActiveModel::Serializer
  attributes :id, :barcode, :name, :size, :brand, :category_type, :img_url

  has_many :vendor_products
  # has_many :vendors
  # belongs_to :category

  def category_type
    object.category.main_cat
  end

 
end
