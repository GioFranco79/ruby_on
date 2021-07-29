class HomeController < ApplicationController
  before_action :authenticate_usuario!, except: [:destroy]
  def index
  end
end
