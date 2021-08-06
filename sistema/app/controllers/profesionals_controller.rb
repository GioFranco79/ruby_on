class ProfesionalsController < ApplicationController
  before_action :set_profesional, only: %i[ show edit update destroy ]

  # GET /profesionals or /profesionals.json
  def index
    @profesionals = Profesional.all
  end

  # GET /profesionals/1 or /profesionals/1.json
  def show
  end

  # GET /profesionals/new
  def new
    @profesional = Profesional.new
  end

  # GET /profesionals/1/edit
  def edit
  end

  # POST /profesionals or /profesionals.json
  def create
    @profesional = Profesional.new(profesional_params)

    respond_to do |format|
      if @profesional.save
        format.html { redirect_to @profesional, notice: "Profesional was successfully created." }
        format.json { render :show, status: :created, location: @profesional }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profesional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesionals/1 or /profesionals/1.json
  def update
    respond_to do |format|
      if @profesional.update(profesional_params)
        format.html { redirect_to @profesional, notice: "Profesional was successfully updated." }
        format.json { render :show, status: :ok, location: @profesional }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profesional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesionals/1 or /profesionals/1.json
  def destroy
    @profesional.destroy
    respond_to do |format|
      format.html { redirect_to profesionals_url, notice: "Profesional was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesional
      @profesional = Profesional.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profesional_params
      params.require(:profesional).permit(:rut, :nombre, :apellido, :titulo, :especialidad, :fono, :ciudad, :comuna, :direccion, :email)
    end
end
