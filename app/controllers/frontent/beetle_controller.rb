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


    private 
    def find_sub_classes(url_sid)
      @results = SubClass.select('`pic_url`,`desc`,`name`,`url`,`id`').where("main_class_id = '#{url_sid}'")
    end

  end
end
