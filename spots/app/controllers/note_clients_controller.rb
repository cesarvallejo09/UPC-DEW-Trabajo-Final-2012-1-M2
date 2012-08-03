class NoteClientsController < ApplicationController
  # GET /note_clients
  # GET /note_clients.json
  def index
    @note_clients = NoteClient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @note_clients }
    end
  end

  # GET /note_clients/1
  # GET /note_clients/1.json
  def show
    @note_client = NoteClient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @note_client }
    end
  end

  # GET /note_clients/new
  # GET /note_clients/new.json
  def new
    @note_client = NoteClient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @note_client }
    end
  end

  # GET /note_clients/1/edit
  def edit
    @note_client = NoteClient.find(params[:id])
  end

  # POST /note_clients
  # POST /note_clients.json
  def create
    @note_client = NoteClient.new(params[:note_client])

    respond_to do |format|
      if @note_client.save
        format.html { redirect_to @note_client, notice: 'Note client was successfully created.' }
        format.json { render json: @note_client, status: :created, location: @note_client }
      else
        format.html { render action: "new" }
        format.json { render json: @note_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /note_clients/1
  # PUT /note_clients/1.json
  def update
    @note_client = NoteClient.find(params[:id])

    respond_to do |format|
      if @note_client.update_attributes(params[:note_client])
        format.html { redirect_to @note_client, notice: 'Note client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @note_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_clients/1
  # DELETE /note_clients/1.json
  def destroy
    @note_client = NoteClient.find(params[:id])
    @note_client.destroy

    respond_to do |format|
      format.html { redirect_to note_clients_url }
      format.json { head :no_content }
    end
  end
end
