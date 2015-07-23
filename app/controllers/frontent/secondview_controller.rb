module	Frontent
	class SecondviewController < Frontent::ApplicationController
		def index
			url_sid = params[:sid]
			@results = SubClass.select('`pic_url`,`desc`,`name`,`url`').where("main_class_id = '#{url_sid}'")
		end
	end
end