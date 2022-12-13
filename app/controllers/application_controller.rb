class ApplicationController < ActionController::Base
  before_action :basic_auth
   # deviseコントローラー設定時
   before_action :configure_permitted_parameters, if: :devise_controller?

   def after_sign_in_path_for(resource) 
    trip_path(resource)
 end
  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  # 新規登録時、ストロングパラメーターを許可
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:personnel_number, :department_category_id, :position_category_id, :name])
    
  end
end
