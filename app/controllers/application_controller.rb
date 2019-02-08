class ApplicationController < ActionController::Base
  before_action :index
  def index
    @current_user = current_user
  end
end
