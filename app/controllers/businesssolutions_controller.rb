class BusinesssolutionsController < ApplicationController
  def index
    @service = Service.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @services }
    end
  end

  # GET /services/1
  # GET /services/1.json
  def show
   # @service = Service.find(params[:id])
   @businesssolution = @service.businesssolution

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service }
    end
  end
end
