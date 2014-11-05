class HomeController < ApplicationController
  def index
  	@categories = Category.all
  end

  def product
  	@category = Category.find(params[:id])
  	@products = @category.products
  	render :partial => "products"
  end
end
