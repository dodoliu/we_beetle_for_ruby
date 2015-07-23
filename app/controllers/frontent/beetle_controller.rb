module Frontent
  class BeetleController < Frontent::ApplicationController
    def index
      @results = MainClass.select('`pic_url`,`name`,`id`,`url`').where('position=1')
    end

    def secondview
      url_sid = params[:sid]
      @results = SubClass.select('`pic_url`,`desc`,`name`,`url`').where("main_class_id = '#{url_sid}'")
    end

    def stylist
      url_sid = params[:sid]
      @results = SubClass.select('`pic_url`,`desc`,`name`,`url`').where("main_class_id = '#{url_sid}'")
    end
  end
end
