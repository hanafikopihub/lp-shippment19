class ApplicationController < ActionController::Base
  before_action :index
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected
  def index
    @current_user = current_user
  end

  # https://github.com/CanCanCommunity/cancancan/wiki/Exception-Handling
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to error_pages_index_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  # end

end
