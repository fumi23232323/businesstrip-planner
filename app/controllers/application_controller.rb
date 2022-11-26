class ApplicationController < ActionController::Base
  before_action :basic_auth
   # deviseコントローラー設定時
   before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  # 新規登録時、ストロングパラメーターを許可
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:personnel_number, :department_category_id, :position_category_id, :last_name, :first_name,])
    
  end
end
