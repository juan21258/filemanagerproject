class ArchivosController < ApplicationController
	def index
    	@archivos = Archivo.all
  	end

	def show
    	@archivo = Archivo.find(params[:id])
  	end

	def new

	end

	def create
		render plain: params[:archivo].inspect
		@archivo = Archivo.new(archivo_params)

  		@archivo.save
  		redirect_to @archivo
	end


	private
  	def archivo_params
    	params.require(:archivo).permit(:title, :filetype, :datefile)
  	end
end
