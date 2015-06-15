module Backend
	class ApplicationController < ActionController::Base
	  # Prevent CSRF attacks by raising an exception.
	  # For APIs, you may want to use :null_session instead.
	  protect_from_forgery with: :exception
	  before_action :authenticate_admin! #添加权限验证
	  layout 'backend' #使用backend layout布局

	end
end