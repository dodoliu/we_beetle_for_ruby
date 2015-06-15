$(function() {
	var url = location.href;
	if (url.indexOf('backend/admins') > -1) {
		$("#li_admin").addClass('open');
	} else if (url.indexOf("backend/main_class") > -1) {
		$("#li_main_class").addClass('open');
	} else if (url.indexOf("backend/sub_class") > -1) {
		$("#li_sub_class").addClass('open');
	} else if (url.indexOf("backend/subscribe") > -1) {
		$("#li_subscribe").addClass('open');
	} else {
		$("#li_main_class").addClass('open');
	}

});