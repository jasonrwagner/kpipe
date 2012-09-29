class StoreController < ApplicationController
  #caches_page :index
  def index
  	@services = Service.all #(:all, :limit =>1 ) works but same image
    #@services = Service.order("RAND()").uniq.limit(1) #works but same image
    #@services = Service.all.shuffle[0..1] works but same image

    #@services = Service.find(:all,:include => [:name], :order => 'services.name ASC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @services }
    end  
  end

  def show
    @service = Service.find(params[:id])
    #@services = Service.order("RAND()").uniq.limit(1)

    respond_to do |format|
     format.html  show.html.erb
     format.json { render json: @service }
    end
  end
end
