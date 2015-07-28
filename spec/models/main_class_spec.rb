#encoding: utf-8
require 'rails_helper'

describe MainClass do
	it "is valid with a name, pic_url, position" do
		expect(build(:main_class)).to be_valid
	end

	it "is invalid without a name" do
		main_class = build(:main_class, name: nil)
		main_class.valid?
		expect(main_class.errors[:name]).to include("不能为空字符")
	end

	it "is uniqueness with a name" do
		main_class = build(:main_class, name: '家装案例')
		main_class_copy = main_class.clone
		main_class_copy.save
		main_class.valid?
		expect(main_class.errors[:name]).to include("已经被使用")
	end

	it "is length must be less then 50 with name" do
		main_class = build(:main_class, name: "abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcde1")
		main_class.valid?
		expect(main_class.errors[:name]).to include("过长（最长为 50 个字符）")
	end

	after :each do	
		#上传图片完成,删除临时文件
	    FileUtils.rm_rf("#{Rails.root}/public/uploads/tmp")
	end

end