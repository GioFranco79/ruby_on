class LibrosController < ApplicationController
  before_action :set_libro, only: %i[ show edit update destroy ]

  # GET /libros or /libros.json
  def index
    @libros = Libro.all
    @ediciones = Edicion.all
    @autores = Autor.all
  end

  # GET /libros/1 or /libros/1.json
  def show
    @ediciones = Edicion.all
    @autores = Autor.all
  end

  # GET /libros/new
  def new
    @libro = Libro.new     
    @autores = Autor.all
    @idau = [0]
  end

  # GET /libros/1/edit
  def edit
    @idau = []
    @li_au = Edicion.where(libro_id: @libro.id)    
    @li_au.each do |au|
      @idau.push(au.autor_id)    
    end        
  end

  # POST /libros or /libros.json
  def create
    @libro = Libro.new(libro_params)
    respond_to do |format|
      if @libro.save
        format.html { redirect_to @libro, notice: "El libro fue creado exitosamente." }
        format.json { render :show, status: :created, location: @libro }
        parametros = params[:ediciones][:autor_id]
        parametros.each do |ai|
          if !ai.empty?
            Edicion.create(:autor_id => ai.to_i, :libro_id => @libro.id)     
          end
        end
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end       
  end

  # PATCH/PUT /libros/1 or /libros/1.json
  def update
    respond_to do |format|
      if @libro.update(libro_params)
        format.html { redirect_to @libro, notice: "El libro fue actualizado exitosamente." }
        format.json { render :show, status: :ok, location: @libro }
        parametros = params[:ediciones][:autor_id]
        aborrar = Edicion.where(libro_id: @libro.id)
        eliminar = []
        aborrar.each do |eli|
          eliminar.push(eli.id)
        end
        if aborrar
          Edicion.destroy(eliminar)
        end
        parametros.each do |ai|
            if !ai.empty?
              Edicion.create(:autor_id => ai.to_i, :libro_id => @libro.id)                
            end  
          end       
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libros/1 or /libros/1.json
  def destroy
    @libro.destroy
    respond_to do |format|
      format.html { redirect_to libros_url, notice: "El libro fue eliminado exitosamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libro
      @libro = Libro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def libro_params
      params.require(:libro).permit(:nombre, :editorial, :anho)
    end
end
