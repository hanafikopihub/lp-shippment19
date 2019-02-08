class Pricelist < ApplicationRecord
  belongs_to :courier
  belongs_to :user

  validates :name, :presence => true
  validates :price, :presence => true
end
