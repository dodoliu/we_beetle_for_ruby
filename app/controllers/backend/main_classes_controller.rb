# require 'uuidtools'
# require 'securerandom'

module Backend

	class MainClassesController < Backend::ApplicationController

		before_action :set_main_class, only: [:edit, :update]
		
		def index
			@main_classes = MainClass.page(params[:page]).order('id desc')
			# @main_classes = MainClass.order('id desc')


			# respond_to do |format|
			# 	format.html do
			# 		@main_calsses = @main_calsses.page(params[:page])
			# 	end
			# end
		end

		def new
			@main_class = MainClass.new
		end
		def create
			@main_class = MainClass.new(create_params)
			# puts "哈哈 #{SecureRandom.uuid}"
			# @main_class.sid = UUIDTools::UUID.random_create
			# SecureRandom.uuid
			@main_class.sid = SecureRandom.uuid
			@main_class.status = 1

			# respond_to do |format|
			# 	if @main_class.save
			# 		# format.html { redirect_to edit_backend_main_class_path(@main_class), notice: '创建成功' }
			# 		# 
			# 		# 
			# 		# format
			# 	else
			# 		format.json { render json: @main_class}
			# 	end
			# end


			if @main_class.save
				# redirect_to action: :index, notice: "创建成功"
				redirect_to edit_backend_main_class_path(@main_class), notice: '新建成功'
				# format.html { redirect_to edit_backend_main_class_path(@main_class), notice: '创建成功' }
			else
				render :new
			end
		end

		def edit
		end
		def update
			@main_class.update(not_create_params)
			# redirect_to :action => :index
			redirect_to edit_backend_main_class_path(@main_class), notice: '修改成功'
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
		def not_create_params
			params.require(:main_class).permit(:name, :position, :pic_url, :desc)
		end

	end

end