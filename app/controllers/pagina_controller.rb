class PaginaController < ApplicationController
  def info
  end

  def inicio
  	@artista = Artistum.all
  end
end
