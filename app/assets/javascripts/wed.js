
$(function(){
	$('#peer-companies').select2();

	$("#latest-report-tabs a:first").tab('show');


	// $("#download_report_pdf").on('click',function(){
	// 	$(this).closest('form').submit();
	// });
	
	$('.screengrabs-list figure a').on('click', function(){
		$('#photoModal .modal-body img').attr('src', $(this).attr('data-img-url'));
	});

});