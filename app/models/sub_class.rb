class SubClass < ActiveRecord::Base
	mount_uploader :pic_url, QiniuUploader

	belongs_to :main_class
	has_many :sub_class_detail

	validates :name, uniqueness: true, presence: true, length: { maximum: 50 }
	validates :pic_url, presence: { message: '必须选择' }
	validates :url, presence: true, length: { maximum: 255 }
end
