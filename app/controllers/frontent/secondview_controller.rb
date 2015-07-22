module	Frontent
	class SecondviewController < Frontent::ApplicationController
		def index
			url_sid = params[:sid]
			@results = SubClass.select('pic_url,desc,name').where("sid = #{url_sid}")
		end
	end
end