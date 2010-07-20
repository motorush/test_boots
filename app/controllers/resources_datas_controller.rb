class ResourcesDatasController < ApplicationController
  # GET /resources_datas
  # GET /resources_datas.xml
  def index
    @resources_datas = ResourcesData.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resources_datas }
    end
  end

  # GET /resources_datas/1
  # GET /resources_datas/1.xml
  def show
    @resources_data = ResourcesData.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resources_data }
    end
  end

  # GET /resources_datas/new
  # GET /resources_datas/new.xml
  def new
    @resources_data = ResourcesData.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resources_data }
    end
  end

  # GET /resources_datas/1/edit
  def edit
    @resources_data = ResourcesData.find(params[:id])
  end

  # POST /resources_datas
  # POST /resources_datas.xml
  def create
    @resources_data = ResourcesData.new(params[:resources_data])

    respond_to do |format|
      if @resources_data.save
        format.html { redirect_to(@resources_data, :notice => 'ResourcesData was successfully created.') }
        format.xml  { render :xml => @resources_data, :status => :created, :location => @resources_data }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resources_data.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resources_datas/1
  # PUT /resources_datas/1.xml
  def update
    @resources_data = ResourcesData.find(params[:id])

    respond_to do |format|
      if @resources_data.update_attributes(params[:resources_data])
        format.html { redirect_to(@resources_data, :notice => 'ResourcesData was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resources_data.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resources_datas/1
  # DELETE /resources_datas/1.xml
  def destroy
    @resources_data = ResourcesData.find(params[:id])
    @resources_data.destroy

    respond_to do |format|
      format.html { redirect_to(resources_datas_url) }
      format.xml  { head :ok }
    end
  end
end
