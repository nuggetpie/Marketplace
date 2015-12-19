class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	rescue_from CanCan::AccessDenied do |exception|
  		redirect_to root_path, notice: "Oops! Looks like you are not authorized to this area"
  	end

  # around_filter :user_time_zone, if: :current_user
  # def user_time_zone(&block)
  # 	Time.use_zone(current_user.time_zone, &block)
  # end

end
