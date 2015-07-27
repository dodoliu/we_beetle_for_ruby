#encoding: utf-8
require 'rails_helper'

describe MainClass do
	# it "is valid with a name"
	# it "is uniqueness with a name"
	# it "is lenght must less then 50"

	it "is valid with a name, pic_url, position" do
		expect(build(:main_class)).to be_valid
		#上传图片完成,删除临时文件
	    FileUtils.rm_rf("#{Rails.root}/public/uploads/tmp")
	end

	it "is invalid without a name" do
		main_class = MainClass.new(name: nil)
		main_class.valid?
		expect(main_class.errors[:name]).to include("不能为空字符")
	end


end