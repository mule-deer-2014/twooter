class TwootsController < ApplicationController
  # GET /twoots
  # GET /twoots.json
  def index
    @twoots = Twoot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @twoots }
    end
  end

  # GET /twoots/1
  # GET /twoots/1.json
  def show
    @twoot = Twoot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @twoot }
    end
  end

  # GET /twoots/new
  # GET /twoots/new.json
  def new
    @twoot = Twoot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @twoot }
    end
  end

  # GET /twoots/1/edit
  def edit
    @twoot = Twoot.find(params[:id])
  end

  # POST /twoots
  # POST /twoots.json
  def create
    @twoot = Twoot.new(params[:twoot])

    respond_to do |format|
      if @twoot.save
        format.html { redirect_to @twoot, notice: 'Twoot was successfully created.' }
        format.json { render json: @twoot, status: :created, location: @twoot }
      else
        format.html { render action: "new" }
        format.json { render json: @twoot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /twoots/1
  # PUT /twoots/1.json
  def update
    @twoot = Twoot.find(params[:id])

    respond_to do |format|
      if @twoot.update_attributes(params[:twoot])
        format.html { redirect_to @twoot, notice: 'Twoot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @twoot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twoots/1
  # DELETE /twoots/1.json
  def destroy
    @twoot = Twoot.find(params[:id])
    @twoot.destroy

    respond_to do |format|
      format.html { redirect_to twoots_url }
      format.json { head :no_content }
    end
  end
end
