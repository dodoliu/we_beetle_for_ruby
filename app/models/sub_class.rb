class SubClass < ActiveRecord::Base
	mount_uploader :pic_url, ImageUploader

	belongs_to :main_class

	validates :name, presence: true, length: { maximum: 50 }
	validates :pic_url, presence: true, length: { maximum: 255 }
	validates :url, presence: true, length: { maximum: 255 }
end
