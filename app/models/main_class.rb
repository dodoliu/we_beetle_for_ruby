class MainClass < ActiveRecord::Base
	mount_uploader :pic_url, ImageUploader

	has_many :subclasses

	validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
	validates :pic_url, presence: { message: "必须选择" }
	validates :position, presence: { message: "必须选择" }
end