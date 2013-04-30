class FoodDesController < ApplicationController
  # GET /food_des
  # GET /food_des.json
  def index
    @food_des = FoodDe.find(:all, :conditions => ["manufacname <> '' or sciname <> ''"], :order => "ndb_no desc", :limit => 25)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @food_des }
    end
  end

  # GET /food_des/1
  # GET /food_des/1.json
  def show
    @food_de = FoodDe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @food_de }
    end
  end

  # GET /food_des/new
  # GET /food_des/new.json
  def new
    @food_de = FoodDe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @food_de }
    end
  end

  # GET /food_des/1/edit
  def edit
    @food_de = FoodDe.find(params[:id])
  end

  # POST /food_des
  # POST /food_des.json
  def create
    @food_de = FoodDe.new(params[:food_de])

    respond_to do |format|
      if @food_de.save
        format.html { redirect_to @food_de, notice: 'Food de was successfully created.' }
        format.json { render json: @food_de, status: :created, location: @food_de }
      else
        format.html { render action: "new" }
        format.json { render json: @food_de.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /food_des/1
  # PUT /food_des/1.json
  def update
    @food_de = FoodDe.find(params[:id])

    respond_to do |format|
      if @food_de.update_attributes(params[:food_de])
        format.html { redirect_to @food_de, notice: 'Food de was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @food_de.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_des/1
  # DELETE /food_des/1.json
  def destroy
    @food_de = FoodDe.find(params[:id])
    @food_de.destroy

    respond_to do |format|
      format.html { redirect_to food_des_url }
      format.json { head :no_content }
    end
  end
end
