class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!


  def admin_only
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
  end

end
