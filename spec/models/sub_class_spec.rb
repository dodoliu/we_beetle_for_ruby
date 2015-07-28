#encoding: utf-8
require 'rails_helper'

describe SubClass do
	it "is valid with name, pic_url, url" do
		expect(build(:sub_class)).to be_valid
	end

	it "is invalid without name" do
		sub_class = build(:sub_class, name: nil)
		sub_class.valid?
		expect(sub_class.errors[:name]).to include("不能为空字符")
	end

	it "is uniqueness with name" do
		sub_class = build(:sub_class, name: '关于纯设计，你知道多少？')
		sub_class_copy = sub_class.clone
		sub_class_copy.save
		sub_class.valid?
		expect(sub_class.errors[:name]).to include("已经被使用")
	end

	it "is length must be less then 50 with name" do
		sub_class = build(:sub_class, name: "abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcde1")
		sub_class.valid?
		expect(sub_class.errors[:name]).to include("过长（最长为 50 个字符）")
	end

	after :each do	
		#上传图片完成,删除临时文件
	    FileUtils.rm_rf("#{Rails.root}/public/uploads/tmp")
	end
end