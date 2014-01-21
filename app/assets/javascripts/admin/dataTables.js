var search_table = $('.table').dataTable({
	"sPaginationType": "full_numbers",
	"sDom": '<"top"ip<"clear">>rt<"bottom"ip<"clear">>',
	"iDisplayLength": 10
	// ref: "sDom": '<"top"iflp<"clear">>rt<"bottom"iflp<"clear">>'
});


// var search_table = $('#company_index').dataTable({
// 	"sPaginationType": "full_numbers",
// 	"sDom": '<"top"ip<"clear">>rt<"bottom"ip<"clear">>',
// 	"iDisplayLength": 10
// 	// ref: "sDom": '<"top"iflp<"clear">>rt<"bottom"iflp<"clear">>'
// });


$('.table-search input[type="text"]').keyup(function(){

	var search_val = $('.table-search input[type="text"]').val();
	search_table.fnFilter(search_val);	
});

