module Frontent
	class ApplicationController < ActionController::Base
		protect_from_forgery with: :exception
		# layout 'frontent'
	end
end