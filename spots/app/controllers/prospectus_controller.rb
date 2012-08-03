class ProspectusController < ApplicationController
  # GET /prospectus
  # GET /prospectus.json
  def index
    @prospectus = Prospectu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prospectus }
    end
  end

  # GET /prospectus/1
  # GET /prospectus/1.json
  def show
    @prospectu = Prospectu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prospectu }
    end
  end

  # GET /prospectus/new
  # GET /prospectus/new.json
  def new
    @prospectu = Prospectu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prospectu }
    end
  end

  # GET /prospectus/1/edit
  def edit
    @prospectu = Prospectu.find(params[:id])
  end

  # POST /prospectus
  # POST /prospectus.json
  def create
    @prospectu = Prospectu.new(params[:prospectu])

    respond_to do |format|
      if @prospectu.save
        format.html { redirect_to @prospectu, notice: 'Prospectu was successfully created.' }
        format.json { render json: @prospectu, status: :created, location: @prospectu }
      else
        format.html { render action: "new" }
        format.json { render json: @prospectu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prospectus/1
  # PUT /prospectus/1.json
  def update
    @prospectu = Prospectu.find(params[:id])

    respond_to do |format|
      if @prospectu.update_attributes(params[:prospectu])
        format.html { redirect_to @prospectu, notice: 'Prospectu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prospectu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospectus/1
  # DELETE /prospectus/1.json
  def destroy
    @prospectu = Prospectu.find(params[:id])
    @prospectu.destroy

    respond_to do |format|
      format.html { redirect_to prospectus_url }
      format.json { head :no_content }
    end
  end
end
