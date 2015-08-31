class StoreController < ApplicationController
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
