class ApplicationController < ActionController::Base
  protect_from_forgery



  def current_cart
    Cart.find_by_id(session[:cart])
  end
end
