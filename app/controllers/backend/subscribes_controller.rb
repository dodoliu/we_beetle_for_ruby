module Backend
	class SubscribesController < Backend::ApplicationController
		def index
			@subscribes = Subscribe.page(params[:page]).order('id desc')
		end

		def edit_status
			
			redirect_to 'http://baidu.com'
		end
	end
end