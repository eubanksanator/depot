class StoreController < ApplicationController
  skip_before_action :authorize

   include CurrentCart
   before_action :set_cart
  def index
   @count = index_view_counter
   @products = Product.all.order(:title)
  end



  private
   def index_view_counter
      session[:counter] ||= 0
      session[:counter] += 1
   end
end
