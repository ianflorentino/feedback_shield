class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.is_a? Admin
      dashboard_admins_path 
    else
      dashboard_company_path(resource)
    end
  end
end
