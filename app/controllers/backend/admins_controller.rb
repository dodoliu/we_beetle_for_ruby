module Backend


	class AdminsController < Backend::ApplicationController
		before_action only: [:show]

		def index
			# @admins = Admin.page(params[:page]).order('id desc')
			# @admins = Admin.order(email: :asc);
			@admins = Admin.page(params[:page]).order('id desc')
		end

	  
		def show
		end

		# private
		# def set_admin
		# 	#@admin = Admin.find(params[:id])
		# end
	end

end