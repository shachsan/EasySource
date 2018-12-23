class VendorProductSerializer < ActiveModel::Serializer
  attributes :id, :v_item, :vendor_id, :case_price, :vendor_name
  belongs_to :product
  belongs_to :vendor

  def vendor_name
    object.vendor.name #object is current vendor_product object get name from that
  end
end
