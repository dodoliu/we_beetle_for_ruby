#encoding: utf-8
module Backend

	class MainClassesController < Backend::ApplicationController
		#请求执行前执行的action,为edit和update这两个action设置实例变量
		before_action :set_main_class, only: [:edit, :update]
		
		def index
			@main_classes = MainClass.page(params[:page]).order('id desc')
		end

		def new
			@main_class = MainClass.new
		end
		def create
			p create_params.to_s
			@main_class = MainClass.new(create_params)
			@main_class.sid = SecureRandom.uuid
			@main_class.status = 1			

			if @main_class.save
				redirect_to edit_backend_main_class_path(@main_class), notice: '新建成功'
			else
				render :new
			end
		end

		def edit
		end
		def update
			if @main_class.update(non_create_params)
				redirect_to edit_backend_main_class_path(@main_class), notice: '修改成功'
			else
				render :new
			end
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
			params.require(:main_class).permit(:name, :sid, :position, :pic_url, :desc)
		end
		#not create permit params
		def non_create_params
			params.require(:main_class).permit(:name, :position, :pic_url, :desc)
		end

	end

end