class PacientesController < ApplicationController
  before_action :set_paciente, only: %i[ show edit update destroy ]

  # GET /pacientes or /pacientes.json
  def index
    @pacientes = Paciente.all
  end

  # GET /pacientes/1 or /pacientes/1.json
  def show
    @cen = Centro.where("cliente_id = 1")
    @esp = Especialidad.joins(:centro).where("centros.cliente_id = 1")
  end

  def procesar
    ci = params[:centro][:id]    
    pi = params[:profe][:id]
    paci = params[:paciente][:id]    
    @tabla = llenaTabla ci, pi, paci
    @dias = diasa Time.now   
  end

  def llenaTabla ci, pi, paci
    tabla = []    
    dias = ['domingo','lunes','martes','miércoles','jueves','viernes','sábado']    
    hoy = Time.now
    f = Date.new(hoy.strftime("%Y").to_i, hoy.strftime("%m").to_i, hoy.strftime("%d").to_i)
    fechas = [f, f+1, f+2, f+3, f+4, f+5, f+6]    
    h = 9
    m = 0    
    for i in 0..33
      linea = []
      for j in 0..fechas.length-1
        horas = tp(h,m)
        z = fechas[j].wday      
        df = fechas[j].strftime("%Y-%m-%d")
        agendadas = Agenda.joins(:paciente).where("fagenda='#{df}' and hagenda='#{horas}' and centro_id =#{ci} and profesional_id=#{pi}")
        horarios = Horario.where("hentrada like '#{df}%' and profesional_id=#{pi} and centro_id=#{ci}")        
        if agendadas.first.nil?
          linea.push({'dis'=>true, 'nom'=>"", 'ha'=>horas, 'fa'=>df, 'day'=>dias[z], 'pri'=>0}, 'cei'=>ci)
        else          
          paciente = Paciente.find(agendadas.first.paciente_id)       
          nomp = paciente.nombre + "\n" + paciente.apellido
          linea.push({'dis'=>true, 'nom'=>nomp, 'ha'=>horas, 'fa'=>df, 'day'=>dias[z], 'pri'=>pi, 'cei'=>ci})
        end
        if horarios.first.nil?
          linea[j]['dis'] = false
        else
          horarios.each do |a|
            horaEn = a.hentrada.strftime("%H%M").to_i          
            horaSal = a.hsalida.strftime("%H%M").to_i                 
            horact = (h*100) + m            
            if horact>=horaEn && horact<=(horaSal-20)
              linea[j]['dis'] = true
            else
              linea[j]['dis'] = false  
            end  
          end
        end
      end
      tabla.push(linea) 
      m += 20
      if m >= 60
        m = 0
        h += 1
      end      
    end
    return tabla
  end

  def diasa hoy
    orden = []
    dias = ['domingo','lunes','martes','miércoles','jueves','viernes','sábado']
    ndd = hoy.wday
    for i in 0..7
      orden.push(dias[ndd])
      ndd += 1
      if ndd >=7 
        ndd = 0
      end   
    end
    return orden
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

    def tp h,m
      if h < 10
        ho = "0" + h.to_s
      else
        ho = h.to_s
      end
      if m < 10
        mi = "0" + m.to_s
      else
        mi = m.to_s
      end
      return (ho + ":" + mi)
    end
end
