class Courier < ApplicationRecord
  has_many :pricelists

  validates :name, :presence => true
  validates :price, :presence => true
end
