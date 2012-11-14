class CartController < ApplicationController
    def index
    	@service = Service.find(params[:id])
    end

end
