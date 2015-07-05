require 'rails_helper'
RSpec.describe Backend::MainClassesController, Type: :controller do
	describe "GET #index" do
		it "aaaa" do
			get :index
			expect(respsone).to be_success
			expect(response).to have_http_status(200)
		end
	end	




end