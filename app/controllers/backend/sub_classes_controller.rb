module Backend
	class SubClassesController < Backend::ApplicationController



	  def index
	  	@sub_classes = SubClass.page(params[:page]).order('id desc')
	  end

	  def new
	  	@sub_class = SubClass.new
	  end

	  def create
	  	@sub_class = SubClass.new(create_params)
	  	@sub_class.sid = SecureRandom.uuid
	  	@sub_class.status = 1

	  	if @sub_class.save
	  		redirect_to action: :index, notice: "新建成功"
	  	else
	  		render :new
	  	end
	  end

	  def show
	  end


	  def edit
	  end

	  def update
	  end

	  def destroy
	  end

	  private
	  def create_params
	  	params.require(:sub_class).permit(:name,:sid,:pic_url)
	  end
	  def not_create_params
	  	params.require(:sub_class).permit(:name,:pic_url)
	  end

	end
end
