class KpipeServicePackageAdminController < ApplicationController
  #GET /kpipe_service_packages
  #GET /kpipe_service_packages.json

  def index
  	@kpipe_service_packages = KpipeServicePackage.all

  	respond_to do |format|
  		format.html # index.html.erb
  		format.json { render json: @kpipe_service_package_admin }
  	end	
  end

  #Get /kpipe_service_packages/1
  #Get /kpipe_service_packages/1.json
  def show
  	@kpipe_service_package = KpipeServicePackage.find(params[:id])

  	respond_to do |format|
  		format.html #show.html.erb
  		format.json { render json: @kpipe_service_package }
  	end
  end

  #GET /kpipe_service_packages/new
  #GET /kpipe_service_packages/new.json
  def new
  	@kpipe_service_package = KpipeServicePackage.new

  	respond_to do |format|
  		format.html #new.html.erb
  		format.json { render json: @kpipe_service_package }
  	end
  end

  #GET /kpipe_service_packages/1/edit
  def edit
  	@kpipe_service_package = KpipeServicePackage.find(params[:id])
  end
  
  #POST /kpipe_service_packages
  #POST /kpipe_service_packages.json
  def create
  	@kpipe_service_package = KpipeServicePackage.new(params[:kpipe_service_package])

  	respond_to do |format|
  		if @kpipe_service_package.save
  			format.html { redirect_to @kpipe_service_package, notice: 'Package was successfully created.' }
  			format.json { render json: @kpipe_service_package, status: :created, location: @kpipe_service_package }
  		else
  			format.html { render action: "new" }
  			format.json { render json: @kpipe_service_package.error, status: :unprocessable_entity }
  		end
  	end
  end
  



end
