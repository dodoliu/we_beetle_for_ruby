module Backend
  class SubClassDetailsController < Backend::ApplicationController
    before_action :set_sub_class_detail, only: [:edit, :update]

    def index
        scd_id = params[:scd_id]
        @sub_class_details = SubClassDetail.select("sub_class_details.*,sub_classes.name as sub_class_name")
        if scd_id
            @sub_class_details = @sub_class_details.where("sub_class_details.sub_class_id = #{scd_id}")
        end
        @sub_class_details = @sub_class_details.joins(:sub_class).page(params[:id]).order('id desc')
        get_sub_classes
    end

    def new
        @sub_class_detail = SubClassDetail.new
        get_sub_classes
    end

    def create
        @sub_class_detail = SubClassDetail.new(create_params)
        @sub_class_detail.sid = SecureRandom.uuid
        @sub_class_detail.status = 1

        if @sub_class_detail.save
            redirect_to edit_backend_sub_class_detail_path(@sub_class_detail), notice: '新建成功'
        else
            get_sub_classes
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @sub_class_detail.update(non_create_params)
            redirect_to edit_backend_sub_class_detail_path(@sub_class_detail), notice: '修改成功'
        else
            render :new
        end
    end

    def destroy
        @sub_class_detail = SubClassDetail.find(params[:id])
        @sub_class_detail.destroy
        redirect_to :action => :index
    end

    private
    def get_sub_classes
        @sub_classes = SubClass.select(:id,:name)
    end
    def set_sub_class_detail
        @sub_class_detail = SubClassDetail.find(params[:id])
        get_sub_classes
    end

    def create_params
        params.require(:sub_class_detail).permit(:name, :sid, :sub_class_id, :status, :url, :desc, :pic_url)
    end
    def non_create_params
        params.require(:sub_class_detail).permit(:name, :sub_class_id, :status, :url, :desc, :pic_url)
    end

  end
end
