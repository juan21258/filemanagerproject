class ArchivosController < ApplicationController
	#Seguridad o autenticacion
	http_basic_authenticate_with name: "admin", password: "secret",
	 except: [:index, :create, :new, :show]
 
	#Definicion de metodos CRUD(Create, Read, Update, Delete)
	def index
    @archivos = Archivo.all
    if params[:search]
      @archivos = Archivo.search(params[:search]).order("created_at DESC")
    else
      @archivos = Archivo.all.order('created_at DESC')
    end
  end

	def show
    @archivo = Archivo.find(params[:id])
  end

	def new
		@archivo = Archivo.new
	end

	def edit
  	@archivo = Archivo.find(params[:id])
	end

	def create
		@archivo = Archivo.new(archivo_params)

		if @archivo.save
    	redirect_to @archivo
  	else
    	render 'new'
  	end  		
	end

	def update
  	@archivo = Archivo.find(params[:id])
 
  	if @archivo.update(archivo_params)
    	redirect_to @archivo
  	else
    	render 'edit'
  	end
	end

	def destroy
  	@archivo = Archivo.find(params[:id])
  	@archivo.destroy
 
  	redirect_to archivo_path
	end

	#Acceso privado
	private
  	def archivo_params
    	params.require(:archivo).permit(:title, :filetype, :datefile)
  	end
end
