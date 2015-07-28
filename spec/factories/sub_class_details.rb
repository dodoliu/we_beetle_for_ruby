FactoryGirl.define do
  factory :sub_class_detail do
    name "走廊"
	pic_url File.open(File.join(Rails.root,'/spec/fixtures/files/company.jpg'))
  end

end
