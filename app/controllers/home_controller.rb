class HomeController < ApplicationController
  def index
    if current_user.present?
      if current_user.role == "admin" || current_user.role == "warehouse"
        redirect_to admin_index_url
      end
    end
  end
end
