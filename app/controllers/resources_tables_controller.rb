class ResourcesTablesController < ApplicationController
  # GET /resources_tables
  # GET /resources_tables.xml
  def index
    @resources_tables = ResourcesTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resources_tables }
    end
  end

  # GET /resources_tables/1
  # GET /resources_tables/1.xml
  def show
    @resources_table = ResourcesTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resources_table }
    end
  end

  # GET /resources_tables/new
  # GET /resources_tables/new.xml
  def new
    @resources_table = ResourcesTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resources_table }
    end
  end

  # GET /resources_tables/1/edit
  def edit
    @resources_table = ResourcesTable.find(params[:id])
  end

  # POST /resources_tables
  # POST /resources_tables.xml
  def create
    @resources_table = ResourcesTable.new(params[:resources_table])

    respond_to do |format|
      if @resources_table.save
        format.html { redirect_to(@resources_table, :notice => 'ResourcesTable was successfully created.') }
        format.xml  { render :xml => @resources_table, :status => :created, :location => @resources_table }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resources_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resources_tables/1
  # PUT /resources_tables/1.xml
  def update
    @resources_table = ResourcesTable.find(params[:id])

    respond_to do |format|
      if @resources_table.update_attributes(params[:resources_table])
        format.html { redirect_to(@resources_table, :notice => 'ResourcesTable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resources_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resources_tables/1
  # DELETE /resources_tables/1.xml
  def destroy
    @resources_table = ResourcesTable.find(params[:id])
    @resources_table.destroy

    respond_to do |format|
      format.html { redirect_to(resources_tables_url) }
      format.xml  { head :ok }
    end
  end
end
