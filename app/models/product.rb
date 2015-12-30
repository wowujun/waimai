class Product < ActiveRecord::Base
  belongs_to :indent
  has_many :productclas, through: :product_productcla_refs

  has_many :product_productcla_refs,dependent: :destroy
end
