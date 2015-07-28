#encoding: utf-8
require 'rails_helper'

describe SubClassDetail do
	it "is valid with name, pic_url" do
		expect(build(:sub_class_detail)).to be_valid
	end

	it "is invalid without name" do
		sub_class_detail = build(:sub_class_detail, name: nil)
		sub_class_detail.valid?
		expect(sub_class_detail.errors[:name]).to include("不能为空字符")
	end

	it "is uniqueness with name" do
		sub_class_detail = build(:sub_class_detail, name: '走廊')
		sub_class_detail_copy = sub_class_detail.clone
		sub_class_detail_copy.save
		sub_class_detail.valid?
		expect(sub_class_detail.errors[:name]).to include("已经被使用")
	end

	it "is length must be less then 50 with name" do
		sub_class_detail = build(:sub_class_detail, name: "abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcde1")
		sub_class_detail.valid?
		expect(sub_class_detail.errors[:name]).to include("过长（最长为 50 个字符）")
	end

	after :each do	
		#上传图片完成,删除临时文件
	    FileUtils.rm_rf("#{Rails.root}/public/uploads/tmp")
	end
end