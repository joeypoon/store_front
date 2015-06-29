class Product < ActiveRecord::Base

  include Payola::Sellable
  validates :name, :price, :permalink, presence: true

  def redirect_path sale
    "/thanks"
  end

end
