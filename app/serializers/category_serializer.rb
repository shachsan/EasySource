class CategorySerializer < ActiveModel::Serializer
  attributes :main_cat
  has_many :products
end
