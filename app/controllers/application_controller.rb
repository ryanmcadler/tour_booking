class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    if cookies[:welcome_token]
      user = User.find_by_welcome_token(cookies[:welcome_token])
      if user.present?
        @current_user ||= user
      end
    end
  end

  def authorize
    unless current_user
      redirect_to root_url, notice: "Access denied"
    end
  end

end
