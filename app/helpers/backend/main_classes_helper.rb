module Backend::MainClassesHelper
	def main_class_conf
		YAML.load_file("#{Rails.root}/config/customs/main_class_type.yml")
	end
end
