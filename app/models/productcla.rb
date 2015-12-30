class Productcla < ActiveRecord::Base
  has_many :product_productcla_refs
  has_many :products, through: :product_productcla_refs
  belongs_to :seller
end
