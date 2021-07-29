class EdicionsController < ApplicationController
  before_action :set_edicion, only: %i[ show edit update destroy ]

  # GET /edicions or /edicions.json
  def index
    @edicions = Edicion.all
  end

  # GET /edicions/1 or /edicions/1.json
  def show
  end

  # GET /edicions/new
  def new
    @edicion = Edicion.new
  end

  # GET /edicions/1/edit
  def edit
  end

  # POST /edicions or /edicions.json
  def create
    @edicion = Edicion.new(edicion_params)

    respond_to do |format|
      if @edicion.save
        format.html { redirect_to @edicion, notice: "Edicion was successfully created." }
        format.json { render :show, status: :created, location: @edicion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @edicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edicions/1 or /edicions/1.json
  def update
    respond_to do |format|
      if @edicion.update(edicion_params)
        format.html { redirect_to @edicion, notice: "Edicion was successfully updated." }
        format.json { render :show, status: :ok, location: @edicion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @edicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edicions/1 or /edicions/1.json
  def destroy
    @edicion.destroy
    respond_to do |format|
      format.html { redirect_to edicions_url, notice: "Edicion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edicion
      @edicion = Edicion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def edicion_params
      params.require(:edicion).permit(:fechad, :libro_id, :autor_id)
    end
end
