class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    ps5_drone_list_path
  end
end
