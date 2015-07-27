FactoryGirl.define do
	factory :main_class do
		name '家装案例'
		pic_url File.open(File.join(Rails.root,'/spec/fixtures/files/company.jpg'))
		position 1
	end
end