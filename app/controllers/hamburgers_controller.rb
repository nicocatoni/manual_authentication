class HamburgersController < ApplicationController
  before_action :set_hamburger, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /hamburgers
  # GET /hamburgers.json
  def index
    @hamburgers = Hamburger.all
  end

  # GET /hamburgers/1
  # GET /hamburgers/1.json
  def show
  end

  # GET /hamburgers/new
  def new
    @hamburger = Hamburger.new
  end

  # GET /hamburgers/1/edit
  def edit
  end

  # POST /hamburgers
  # POST /hamburgers.json
  def create
    @hamburger = Hamburger.new(hamburger_params)

    respond_to do |format|
      if @hamburger.save
        format.html { redirect_to @hamburger, notice: 'Hamburger was successfully created.' }
        format.json { render :show, status: :created, location: @hamburger }
      else
        format.html { render :new }
        format.json { render json: @hamburger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hamburgers/1
  # PATCH/PUT /hamburgers/1.json
  def update
    respond_to do |format|
      if @hamburger.update(hamburger_params)
        format.html { redirect_to @hamburger, notice: 'Hamburger was successfully updated.' }
        format.json { render :show, status: :ok, location: @hamburger }
      else
        format.html { render :edit }
        format.json { render json: @hamburger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hamburgers/1
  # DELETE /hamburgers/1.json
  def destroy
    @hamburger.destroy
    respond_to do |format|
      format.html { redirect_to hamburgers_url, notice: 'Hamburger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hamburger
      @hamburger = Hamburger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hamburger_params
      params.require(:hamburger).permit(:name, :description, :price)
    end
end
