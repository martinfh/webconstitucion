class ExposicionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_exposicion, only: [:show, :edit, :update, :destroy]

  # GET /exposicions
  # GET /exposicions.json
  def index
    @exposicions = Exposicion.all
  end

  # GET /exposicions/1
  # GET /exposicions/1.json
  def show
  end

  # GET /exposicions/new
  def new
    @exposicion = Exposicion.new
  end

  # GET /exposicions/1/edit
  def edit
  end

  # POST /exposicions
  # POST /exposicions.json
  def create
    @exposicion = Exposicion.new(exposicion_params)

    respond_to do |format|
      if @exposicion.save
        format.html { redirect_to @exposicion, notice: 'Exposicion was successfully created.' }
        format.json { render :show, status: :created, location: @exposicion }
      else
        format.html { render :new }
        format.json { render json: @exposicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exposicions/1
  # PATCH/PUT /exposicions/1.json
  def update
    respond_to do |format|
      if @exposicion.update(exposicion_params)
        format.html { redirect_to @exposicion, notice: 'Exposicion was successfully updated.' }
        format.json { render :show, status: :ok, location: @exposicion }
      else
        format.html { render :edit }
        format.json { render json: @exposicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exposicions/1
  # DELETE /exposicions/1.json
  def destroy
    @exposicion.destroy
    respond_to do |format|
      format.html { redirect_to exposicions_url, notice: 'Exposicion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exposicion
      @exposicion = Exposicion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exposicion_params
      params.require(:exposicion).permit(:titulo_expo, :fechas, :texto, imagenes_expo: [])
    end
end
