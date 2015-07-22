$(document).ready(function() {

	//菜单选择
	var url = location.href;
	if (url.indexOf('backend/admins') > -1) {
		$("#li_admin").addClass('open');
	} else if (url.indexOf("backend/main_classes") > -1) {
		$("#li_main_class").addClass('open');
	} else if (url.indexOf("backend/sub_classes") > -1) {
		$("#li_sub_class").addClass('open');
	} else if (url.indexOf("backend/sub_class_details") > -1) {
		$("#li_sub_class_detail").addClass('open');
	} else if (url.indexOf("backend/subscribe") > -1) {
		$("#li_subscribe").addClass('open');
	} else {
		$("#li_main_class").addClass('open');
	}

	//notice提示	
	$("#div_notice").animate({
		height: '30px',
		cpacity: '0.5'
	},function() {
		setTimeout(function(){
			$("#div_notice").animate({
				height: '0px',
				cpacity: '0.5'
			},function(){
				$("#inner_notice").hide();
			});
		},3000);
	});
});