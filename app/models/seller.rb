class Seller < ActiveRecord::Base
  has_secure_password
  has_many :products
  belongs_to :cla

end
