class VendorProductSerializer < ActiveModel::Serializer
  attributes :id, :v_item, :case_price, :phone, :email, :vendor_name
  belongs_to :product
  belongs_to :vendor

  def vendor_name
    object.vendor.name #object is current vendor_product object get name from that
  
  end

  def phone
    object.vendor.phone
  end 

  def email
    object.vendor.email
    
  end
end
