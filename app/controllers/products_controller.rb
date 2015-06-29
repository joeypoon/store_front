class ProductsController < ApplicationController

  def index
    set_products
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    @product.price *= 100
    if @product.save
      flash.now[:notice] = 'Success'
    else
      flash.now[:alert] = 'Fail'
    end
  end

  def thanks
    set_products
    flash.now[:notice] = "Purchase complete"
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :permalink)
    end

    def set_products
      @products = Product.all.order('created_at desc limit 7')
    end

end
