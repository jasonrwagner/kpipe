class CartController < ApplicationController
  def index
    @service = Service.all
  end

  def show
    @service = Service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service }
    end
  end

end
