module SessionsHelper
	# Logs in the given user.
  def log_in(usuario)
    session[:usuario_id] = usuario.id
  end

  # Returns the current logged-in user (if any).
  def current_usuario
    @current_usuario ||= Usuario.find_by(id: session[:usuario_id])
  end

  def logged_in?
    !current_usuario.nil?
  end

  # Logs out the current user.
  def log_out
    session.delete(:usuario_id)
    @current_usuario = nil
    flash[:success] = "You have been logged out successfully"
  end
end
