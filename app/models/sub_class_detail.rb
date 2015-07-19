class SubClassDetail < ActiveRecord::Base
	mount_uploader :pic_url, QiniuUploader

	belongs_to :sub_class

	validates :name, presence: true, length: { maximum: 50 }
	validates :pic_url, presence: { message: '必须选择' }
	validates :url, presence: true, length: { maximum: 255 }

end
