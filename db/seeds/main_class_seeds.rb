#encoding: utf-8

#main_classes seed,算是正式数据了
#tip: 执行这个seed前 需要将 main_class model中这个上传图片先屏蔽掉 mount_uploader :pic_url, ImageUploader
MainClass.create(name: '公司简介', sid: SecureRandom.uuid, pic_url: 'company.jpg', status: 1, position: 1, url: 'http://mp.weixin.qq.com/s?__biz=MzAwMzExNDIzOA==&mid=201010916&idx=1&sn=3d3ca9af4dfe24163e1936c125260e01#rd')
MainClass.create(name: '家装案例', sid: SecureRandom.uuid, pic_url: 'jiazhuang.jpg', status: 1, position: 1)
MainClass.create(name: '工装案例', sid: SecureRandom.uuid, pic_url: 'gongzhuang.jpg', status: 1, position: 1)
MainClass.create(name: '实景案例', sid: SecureRandom.uuid, pic_url: 'shijing.jpg', status: 1, position: 1)
MainClass.create(name: '设计师团队', sid: SecureRandom.uuid, pic_url: 'team.jpg', status: 1, position: 1)
MainClass.create(name: '家装宝典', sid: SecureRandom.uuid, pic_url: 'baodian.jpg', status: 1, position: 1)
MainClass.create(name: '免费预约', sid: SecureRandom.uuid, pic_url: 'yuyue.jpg', status: 1, position: 1)
