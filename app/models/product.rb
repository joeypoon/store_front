class Product < ActiveRecord::Base

  validates :name, :price, :permalink, presence: true

end
