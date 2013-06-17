class SupplyordersstatusesController < ApplicationController
  # GET /supplyordersstatuses
  # GET /supplyordersstatuses.json
  def index
    @supplyordersstatuses = Supplyordersstatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplyordersstatuses }
    end
  end

  # GET /supplyordersstatuses/1
  # GET /supplyordersstatuses/1.json
  def show
    @supplyordersstatus = Supplyordersstatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplyordersstatus }
    end
  end

  # GET /supplyordersstatuses/new
  # GET /supplyordersstatuses/new.json
  def new
    @supplyordersstatus = Supplyordersstatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplyordersstatus }
    end
  end

  # GET /supplyordersstatuses/1/edit
  def edit
    @supplyordersstatus = Supplyordersstatus.find(params[:id])
  end

  # POST /supplyordersstatuses
  # POST /supplyordersstatuses.json
  def create
    @supplyordersstatus = Supplyordersstatus.new(params[:supplyordersstatus])

    respond_to do |format|
      if @supplyordersstatus.save
        format.html { redirect_to @supplyordersstatus, notice: 'Supplyordersstatus was successfully created.' }
        format.json { render json: @supplyordersstatus, status: :created, location: @supplyordersstatus }
      else
        format.html { render action: "new" }
        format.json { render json: @supplyordersstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplyordersstatuses/1
  # PUT /supplyordersstatuses/1.json
  def update
    @supplyordersstatus = Supplyordersstatus.find(params[:id])

    respond_to do |format|
      if @supplyordersstatus.update_attributes(params[:supplyordersstatus])
        format.html { redirect_to @supplyordersstatus, notice: 'Supplyordersstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplyordersstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplyordersstatuses/1
  # DELETE /supplyordersstatuses/1.json
  def destroy
    @supplyordersstatus = Supplyordersstatus.find(params[:id])
    @supplyordersstatus.destroy

    respond_to do |format|
      format.html { redirect_to supplyordersstatuses_url }
      format.json { head :no_content }
    end
  end
end
