class ClientesController < InheritedResources::Base

  private

    def cliente_params
      params.require(:cliente).permit(:nombre, :direccion)
    end

end
