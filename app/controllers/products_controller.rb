class ProductsController < ApplicationController

  def index
    set_products
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash.now[:notice] = 'Success'
    else
      flash.now[:alert] = 'Fail'
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :permalink)
    end

    def price(cents)
      cents / 100.0
    end

    def price=(dollars)
      dollars * 100
    end

    def set_products
      @products = Product.all.order('created_at desc limit 7')
    end

end
