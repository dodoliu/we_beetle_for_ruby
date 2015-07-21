module Frontent
	class HomeController < Frontent::ApplicationController
		def index
  			@result = MainClass.select('pic_url,name,sid').where('position=1')
		end
	end
end