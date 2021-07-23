class RolesController < ApplicationController
  def index
    @roles = Rol.all
    @usuarios = Usuario.all
  end

  def new
  end

  def show
  end

  def update
  end

  def delete
  end

  def create
  end
end
