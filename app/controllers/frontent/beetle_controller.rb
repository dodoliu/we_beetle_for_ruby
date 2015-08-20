module Frontent
  class BeetleController < Frontent::ApplicationController
    def index
      @results = MainClass.select('`pic_url`,`name`,`id`,`url`').where('position=1')
    end

    #家装案例,工装案例...
    def secondview
      find_sub_classes params[:sid]
    end
    #团队
    def stylist
      find_sub_classes params[:sid]
    end
    #家装宝典
    def classcontent
      find_sub_classes params[:sid]
    end

    #家装案例,工装案例...展示
    def secondshow
      @results = SubClassDetail.select('`pic_url`,`desc`,`name`,`url`').where("sub_class_id= '#{params[:sid]}'")
    end

    #订阅
    def subscribe      
    end
    def subscribe_create
      @subscribe = Subscribe.new({ contact: params[:contact],information: params[:information], server_date: params[:server_date],
      house_type: params[:house_type], housea_ddress: params[:housea_ddress], floor_area: params[:floor_area], style: params[:style],
      memo: params[:memo] })
      @subscribe.status = 1 
      if @subscribe.save
        #.....这个  ":json" 是关键,如果没有...返回的数据不是json格式
        render :json => { :IsSuccess => true}
      else
        p 'aaaaaaa'
      end
    end

    private 
    def find_sub_classes(url_sid)
      @results = SubClass.select('`pic_url`,`desc`,`name`,`url`,`id`').where("main_class_id = '#{url_sid}'")
    end

  end
end
