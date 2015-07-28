FactoryGirl.define do
	factory :sub_class do
		name '关于存设计,你知道多少?'
		pic_url File.open(File.join(Rails.root,"/spec/fixtures/files/company.jpg"))
		url 'http://mp.weixin.qq.com/s?__biz=MzAwMzExNDIzOA==&mid=201277271&idx=1&sn=bb9701164ec0a21a27663ed2276d4a55#rd'
	end
end