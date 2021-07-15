class CuentaBancaria
    attr_reader :saldo_corriente, :saldo_ahorros
    def initialize (tasa = 0.01)
        @tasa_interes = tasa
        @saldo_total = 0
        @saldo_corriente = []
        @saldo_ahorros = []
    end

    def crear_corriente (cuenta, cant=0)
        for i in 0..@saldo_corriente.length-1
            if @saldo_corriente[i].ncuenta == cuenta
                Puts "Error! La cuenta ya existe."
                return false           
            end
        end
        @saldo_corriente.push({ncuenta: cuenta, monto:cant})
        @saldo_total = @saldo_total + cant
        puts "Exito! La cuenta se ha creado."
        return true
    end

    def crear_ahorros (cuenta, cant=0)
        for i in 0..@saldo_ahorros.length-1
            if @saldo_ahorros[i][:ncuenta] == cuenta
                Puts "Error! La cuenta ya existe."
                return false           
            end
        end
        @saldo_ahorros.push({ncuenta: cuenta, monto:cant})
        @saldo_total = @saldo_total + cant
        puts "Exito! La cuenta se ha creado."
        return true
    end

    def retirar_corriente (cuenta, cant = 1)
       for i in 0..@saldo_corriente.length-1
            if @saldo_corriente[i][:ncuenta] == cuenta
                if @saldo_corriente[i][:monto] >= cant
                    @saldo_corriente[i][:monto] = @saldo_corriente[i][:monto] - cant
                    @saldo_total = @saldo_total - cant
                    puts "Se ha retirado #{cant} desde su cuenta corriente."
                    puts "Nuevo saldo #{@saldo_corriente[i][:monto]}."
                    return true
                else
                    puts "Error! No le queda saldo suficiente en su cuenta corriente."
                    return false
                end
            end
       end
       puts "Error! La cuenta no existe."
       return false
    end

    def retirar_ahorros (cuenta, cant = 1)
        for i in 0..@saldo_ahorros.length-1
             if @saldo_ahorros[i][:ncuenta] == cuenta
                if @saldo_ahorros[i][:monto] >= cant
                    @saldo_ahorros[i][:monto] = @saldo_ahorros[i][:monto] - cant
                    @saldo_total = @saldo_total - cant
                    puts "Se ha retirado #{cant} desde su cuenta de ahorros."
                    puts "Nuevo saldo #{@saldo_ahorros[i][:monto]}."
                    return true
                else
                    puts "Error! No le queda saldo suficiente en su cuenta de ahorros."
                    return false
                end
            end
        end
        puts "Error! La cuenta no existe."
        return false
    end

    def mostrar_saldo_total
        puts "El dinero total que tiene en todas sus cuentas es de : $#{@saldo_total}"
    end
    def mostrar_ahorros
        sum = 0
        for i in 0..@saldo_ahorros.length-1
            puts "Cuenta Ahorro [#{@saldo_ahorros[i][:ncuenta]}] tiene : $#{@saldo_ahorros[i][:monto]} "
            sum = sum + @saldo_ahorros[i][:monto]            
        end
        puts "En total tiene : $#{sum} pesos en sus cuentas de ahorros."
    end

    def mostrar_corriente
        sum = 0
        for i in 0..@saldo_corriente.length-1
            puts "Cuenta corriente [#{@saldo_corriente[i][:ncuenta]}] tiene : $#{@saldo_corriente[i][:monto]} "
            sum = sum + @saldo_corriente[i][:monto]            
        end
        puts "En total tiene : $#{sum} pesos en sus cuentas corrientes."
    end

    def mostar_nro_cuentas
        puts "Actualmente tiene #{@saldo_corriente.length} cuentas corrientes en el banco."
        puts "Actualmente tiene #{@saldo_ahorros.length} cuentas de ahorro en el banco."
    end

    def mostrar_todo
        puts "**********************************************************"
        mostrar_ahorros
        mostrar_corriente
        puts "La tasa de interes es de %#{@tasa_interes}"
        puts "**********************************************************"
        mostrar_saldo_total
    end

    def abonar_corriente (cuenta, cant = 1)
        for i in 0..@saldo_corriente.length-1
            if @saldo_corriente[i][:ncuenta] == cuenta
                @saldo_corriente[i][:monto] = @saldo_corriente[i][:monto] + cant
                @saldo_total = @saldo_total + cant
                puts "Se ha abonado #{cant} a su cuenta corriente."
                puts "Nuevo saldo #{@saldo_corriente[i][:monto]}."
                return true                
            end
        end
        puts "Error! La cuenta no existe."
        return false
     end
     
     def abonar_ahorros (cuenta, cant = 1)
        for i in 0..@saldo_ahorros.length-1
            if @saldo_ahorros[i][:ncuenta] == cuenta
                @saldo_ahorros[i][:monto] = @saldo_ahorros[i][:monto] + cant
                @saldo_total = @saldo_total + cant
                puts "Se ha abonado #{cant} a su cuenta de ahorro."
                puts "Nuevo saldo #{@saldo_ahorros[i][:monto]}."
                return true               
            end
        end
        puts "Error! La cuenta no existe."
        return false
     end
end
juanito = CuentaBancaria.new
juanito.crear_ahorros(1,50000)
juanito.crear_ahorros(2,130000)
juanito.crear_ahorros(3,90000)
juanito.crear_corriente(1,490000)
puts "***********************************************************************\n\n"
juanito.retirar_ahorros(2,30000)
juanito.retirar_corriente(1,40000)
juanito.mostrar_todo
puts "***********************************************************************\n\n"
juanito.abonar_ahorros(3,10000)
juanito.abonar_corriente(1,10000)
juanito.retirar_ahorros(1,60000)


