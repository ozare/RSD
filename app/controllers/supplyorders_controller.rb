class SupplyordersController < ApplicationController
  # GET /supplyorders
  # GET /supplyorders.json
  def index
    @supplyorders = Supplyorder.all
    #@supplyorders.Supplier.find(:all, :order => 'LastName')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplyorders }
    end
  end

  # GET /supplyorders/1
  # GET /supplyorders/1.json
  def show
    @supplyorder = Supplyorder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplyorder }
    end
  end

  # GET /supplyorders/new
  # GET /supplyorders/new.json
  def new
    @supplyorder = Supplyorder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplyorder }
    end
  end

  # GET /supplyorders/1/edit
  def edit
    @supplyorder = Supplyorder.find(params[:id])
  end

  # POST /supplyorders
  # POST /supplyorders.json
  def create
    @supplyorder = Supplyorder.new(params[:supplyorder])

    respond_to do |format|
      if @supplyorder.save
        format.html { redirect_to @supplyorder, notice: 'Supplyorder was successfully created.' }
        format.json { render json: @supplyorder, status: :created, location: @supplyorder }
      else
        format.html { render action: "new" }
        format.json { render json: @supplyorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplyorders/1
  # PUT /supplyorders/1.json
  def update
    @supplyorder = Supplyorder.find(params[:id])

    respond_to do |format|
      if @supplyorder.update_attributes(params[:supplyorder])
        format.html { redirect_to @supplyorder, notice: 'Supplyorder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplyorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplyorders/1
  # DELETE /supplyorders/1.json
  def destroy
    @supplyorder = Supplyorder.find(params[:id])
    @supplyorder.destroy

    respond_to do |format|
      format.html { redirect_to supplyorders_url }
      format.json { head :no_content }
    end
  end
end
