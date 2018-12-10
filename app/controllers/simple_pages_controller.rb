class SimplePagesController < ApplicationController

  def landing_page
  @featured_product = Product.first
  @products = Product.all
  @products = Product.limit(3)
  end

end
