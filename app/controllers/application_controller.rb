class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :year_of_birth])
  end

protected

   def authenticate_user!
     if current_user
       redirect_to :hard_skills
     end
   end
end
