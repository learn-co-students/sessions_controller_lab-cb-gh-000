class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.Form Helpers
  protect_from_forgery with: :exception
  helper_method :is_login?

  def current_user
    session[:name] ||= []
  end

  def is_login?
    !current_user.empty?
  end

end