class AktivitetsController < ApplicationController
  # GET /aktivitets
  # GET /aktivitets.json
  def index
    if current_user.aktivitet != nil
    @aktivitets = current_user.aktivitet
    else
      redirect_to new_aktivitet_path
    end
    #@aktivitets = Aktivitet.all
    #@aktivitets = current_user.aktivitet

    #respond_to do |format|
      #format.html # index.html.erb
      #format.json { render json: @aktivitets }
   #end
  end

  # GET /aktivitets/1
  # GET /aktivitets/1.json
  def show
    redirect_to aktivitets_path
    @aktivitet = Aktivitet.find(params[:id])

    #respond_to do |format|
      #format.html # show.html.erb
      #format.json { render json: @aktivitet }
    #end
  end

  # GET /aktivitets/new
  # GET /aktivitets/new.json
  def new
    @aktivitet = Aktivitet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aktivitet }
    end
  end

  # GET /aktivitets/1/edit
  def edit
    @aktivitet = Aktivitet.find(params[:id])
  end

  # POST /aktivitets
  # POST /aktivitets.json
  def create
    @aktivitet = Aktivitet.new(params[:aktivitet])
    @aktivitet.user_id = current_user.id

    respond_to do |format|
      if @aktivitet.save
        format.html { redirect_to @aktivitet, notice: 'Aktivitet was successfully created.' }
        format.json { render json: @aktivitet, status: :created, location: @aktivitet }
      else
        format.html { render action: "new" }
        format.json { render json: @aktivitet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aktivitets/1
  # PUT /aktivitets/1.json
  def update
    @aktivitet = Aktivitet.find(params[:id])

    respond_to do |format|
      if @aktivitet.update_attributes(params[:aktivitet])
        format.html { redirect_to @aktivitet, notice: 'Aktivitet was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @aktivitet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aktivitets/1
  # DELETE /aktivitets/1.json
  def destroy
    @aktivitet = Aktivitet.find(params[:id])
    @aktivitet.destroy

    respond_to do |format|
      format.html { redirect_to aktivitets_url }
      format.json { head :ok }
    end
  end
end
