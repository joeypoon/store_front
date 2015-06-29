class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  private

    def price
      self / 100.0
    end

    def price=(dollars)
      dollars * 100
    end

end
