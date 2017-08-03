class UsuariosController < ApplicationController
  def show
    @usuario = Usuario.find(params[:id])
  end

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      log_in @usuario
      flash[:success] = "Welcome to the file manager"
      redirect_to @usuario
    else
      render 'new'
    end
  end

  private

    def usuario_params
      params.require(:usuario).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
