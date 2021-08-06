class PacientesController < ApplicationController
  before_action :set_paciente, only: %i[ show edit update destroy ]
  @pactual = {pac: 0, cen: 0, pro: 0}
  # GET /pacientes or /pacientes.json
  def index
    @pacientes = Paciente.all
  end

  # GET /pacientes/1 or /pacientes/1.json
  def show
    @cen = Centro.where("cliente_id = 1")    
  end

  def procesar
    res = params[:centro][:id]
    print "\n\n **************************\n @PActualcen : #{@pactual.inspect} \n***********************\n\n"
    @pactual["cen"] = res.to_i
    @paciente = Paciente.where("pacientes.id = #{pactual.pac}")
    @centro = Centro.select("centros.nombre").where("centros.id = #{pactual.cen}")
    @odonto = Profesional.joins(:horarios).where("horarios.centro_id = #{pactual.cen}")
  end

  def obtener_centro
    val = params[:centro_id]
    #Use val to find records
    ic = val.to_i
    prof = Profesional.joins(:horarios).where("horarios.centro_id = #{ic} and profesionals.tipo = 1")
    options = prof.collect{|x| "'#{x.id}' : '#{x.nombre} #{x.apellido}'"}    
    render :text => "{#{options.join(",")}}" 
  end

  def bcentro
    res = params.require(:paciente).permit(:rut)
    res.each do |r|
      if r != 'rut'
        rut = r[1]
        pac = Paciente.where("pacientes.rut = '#{rut}'")
        if pac.first.nil?          
          redirect_to :action => "new"
        else
          @paciente = Paciente.find(pac.first.id)
          @pactual ={pac: @paciente.id, cen: 0, pro: 0}         
          redirect_to paciente_path(@paciente)
        end
      end  
    end
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit    
  end

  # POST /pacientes or /pacientes.json
  def create

    @paciente = Paciente.new(paciente_params)

    respond_to do |format|
      if @paciente.save
        @pactual = {pac: @paciente.id, cen: 0, pro: 0}        
        format.html { redirect_to @paciente, notice: "Paciente was successfully created." }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1 or /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to @paciente, notice: "Paciente was successfully updated." }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1 or /pacientes/1.json
  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: "Paciente fue exitosamente eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paciente_params
      params.require(:paciente).permit(:rut, :nombre, :apellido, :fono, :email, :fechanac, :prevision)
    end
end
