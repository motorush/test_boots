class ResourcesFieldsController < ApplicationController
  # GET /resources_fields
  # GET /resources_fields.xml
  def index
    @resources_table = ResourcesTable.find(params[:resources_table_id])
    @resources_fields = @resources_table.resources_fields

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resources_fields }
    end
  end

  # GET /resources_fields/1
  # GET /resources_fields/1.xml
  def show
    @resources_table = ResourcesTable.find(params[:resources_table_id])
    @resources_field = @resources_table.resources_fields.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resources_field }
    end
  end

  # GET /resources_fields/new
  # GET /resources_fields/new.xml
  def new
    @resources_table = ResourcesTable.find(params[:resources_table_id])
    @resources_field = @resources_table.resources_fields.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resources_field }
    end
  end

  # GET /resources_fields/1/edit
  def edit
    @resources_table = ResourcesTable.find(params[:resources_table_id])
    @resources_field = @resources_table.resources_fields.find(params[:id])
  end

  # POST /resources_fields
  # POST /resources_fields.xml
  def create
    @resources_table = ResourcesTable.find(params[:resources_table_id])
    @resources_field = @resources_table.resources_fields.build(params[:resources_field])

    respond_to do |format|
      if @resources_field.save
        format.html { redirect_to(@resources_table, :notice => 'ResourcesField was successfully created.') }
        format.xml  { render :xml => @resources_field, :status => :created, :location => @resources_field }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resources_field.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resources_fields/1
  # PUT /resources_fields/1.xml
  def update
    @resources_table = ResourcesTable.find(params[:resources_table_id])
    @resources_field = ResourcesField.find(params[:id])

    respond_to do |format|
      if @resources_field.update_attributes(params[:resources_field])
        format.html { redirect_to resources_table_resources_field_url(@resources_table, @resources_field, :notice => 'ResourcesField was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resources_field.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resources_fields/1
  # DELETE /resources_fields/1.xml
  def destroy
    @resources_table = ResourcesTable.find(params[:resources_table_id])
    @resources_field = ResourcesField.find(params[:id])
    @resources_field.destroy

    respond_to do |format|
      format.html { redirect_to resources_table_resources_fields_path(@resources_table) }
      format.xml  { head :ok }
    end
  end
end
