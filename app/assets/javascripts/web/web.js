$(function(){
	$('').dataTable();
	$('.interactive-table').dataTable({
		"sPaginationType": "full_numbers",
		"sDom": '<"top"<"clear">>rt<"bottom"ip<"clear">>',
		"iDisplayLength": 10
		// ref: "sDom": '<"top"iflp<"clear">>rt<"bottom"iflp<"clear">>'
	});
});