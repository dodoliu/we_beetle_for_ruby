QINIU_CONFIG = YAML.load(File.open(Rails.root.join('config','qiniu.yml')))[Rails.env].symbolize_keys

::CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = QINIU_CONFIG[:AccessKey]
  config.qiniu_secret_key    = QINIU_CONFIG[:SecretKey]
  config.qiniu_bucket        = QINIU_CONFIG[:Bucket]
  config.qiniu_bucket_domain = QINIU_CONFIG[:BucketDomain]
  config.qiniu_bucket_private= QINIU_CONFIG[:BucketPrivate] #default is false
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"

  # config.qiniu_up_host       = 'http://up.qiniug.com' #七牛上传海外服务器,国内使用可以不要这行配置
end

#如果是测试环境,默认上传图片到本地,(不知为何,这样设置后没效果.....)
#并且禁用图片处理,以加快测试速度
if Rails.env.test?
	::CarrierWave.configure do |config|
		config.storage = :file
		config.enable_processing = false
	end
end