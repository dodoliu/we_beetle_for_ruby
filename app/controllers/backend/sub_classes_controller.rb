module Backend
  class SubClassesController < Backend::ApplicationController
    before_action :set_sub_class, only: [:edit, :update]

    def index
      mc_id = params[:mc_id];
      @sub_classes = SubClass.select("sub_classes.*,main_classes.name as main_class_name")
      if mc_id
        #通过sql查出所属主分类的名称,不要再通过方法去处理了
        @sub_classes = @sub_classes.where("sub_classes.main_class_id = #{mc_id}")
      end
      @sub_classes = @sub_classes.joins(:main_class).page(params[:id]).order('id desc')
      get_main_classes
    end

    def new
      @sub_class = SubClass.new
      get_main_classes
    end

    def create

      @sub_class = SubClass.new(create_params)
      @sub_class.sid = SecureRandom.uuid
      @sub_class.status = 1

      if @sub_class.save
        redirect_to edit_backend_sub_class_path(@sub_class), notice: '新建成功'
      else
        get_main_classes
        render :new
      end
    end

    def show
    end


    def edit

    end

    def update
      if @sub_class.update(non_create_params)
        redirect_to edit_backend_sub_class_path(@sub_class), notice: '修改成功'
      else
        render :new
      end
    end

    def destroy
      @sub_class = SubClass.find(params[:id])
      @sub_class.destroy
      redirect_to :action => :index
    end

    private
    def get_main_classes
      @main_classes = MainClass.select(:id,:name)
    end

    def set_sub_class
      @sub_class = SubClass.find(params[:id])
      get_main_classes
    end

    def create_params
      params.require(:sub_class).permit(:name, :sid, :pic_url, :main_class_id, :url, :desc, :status )
    end
    def non_create_params
      params.require(:sub_class).permit(:name, :pic_url, :main_class_id, :url, :desc, :status)
    end

  end
end
