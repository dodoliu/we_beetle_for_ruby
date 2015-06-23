require 'uuidtools'

module Backend

	class MainClassesController < Backend::ApplicationController

		before_action :set_main_class, only: [:edit, :update]
		
		def index
			@main_classes = MainClass.page(params[:page]).order('id desc')
		end

		def new
			@main_class = MainClass.new
		end
		def create
			@main_class = MainClass.new(create_params)
			@main_class.sid = UUIDTools::UUID.random_create
			@main_class.save
			redirect_to :action => :index
		end

		def edit
		end
		def update
			@main_class.update(not_create_params)
			redirect_to :action => :index
		end

		def show
		end

		def destroy
			@main_calss = MainClass.find(params[:id])
			@main_calss.destroy
			redirect_to :action => :index
		end

		private
		def set_main_class
			@main_class = MainClass.find(params[:id])
		end

		#create permit params
		def create_params
			params.require(:main_class).permit(:name, :sid, :position)
		end
		#not create permit params
		def not_create_params
			params.require(:main_class).permit(:name, :position)
		end

	end

end