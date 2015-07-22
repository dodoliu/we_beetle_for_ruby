module Frontent
	class HomeController < Frontent::ApplicationController
		def index
  			@results = MainClass.select('pic_url,name,sid,url').where('position=1')
		end
	end
end