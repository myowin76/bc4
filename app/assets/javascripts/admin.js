// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require admin/dataTables
//= require admin/datepicker
//= require admin/ckeditor
//= require admin/config
//= require admin/styles
// require chosen-jquery
//= require select2
// require_tree .
//= require_self



$(function() {

	$('.link_edit').tooltip();
	$('#rpt-tag').select2();
	$(".peer-companies").select2();
	$(".company-ddl-types").select2();

	$(".company-ddl-statuses").select2();
	$(".company-ddl-countries").select2();
	$(".company-ddl-regions").select2();
	$(".company-ddl-sectors").select2();
	$(".admin_project_reports_company select").select2();
	$("#project-new-report-companies").select2();
	$("#project-new-report-type").select2();
	$("#admin_best_practice_company_id").select2();

	$("#report-tabs a:first").tab('show');
	
	$('#accordion').collapse('toggle')
	$("#project-add-repot").on("click", function(e){

		// alert("add me");
		// time = new Date().getTime()
	 //  regexp = new RegExp($(this).data('id'), 'g')
	 //  alert(RegExp($(this).data('id')), 'g');
	  // $(this).before($(this).data('fields').replace(regexp, time))
    // var info = {}
    // info['editors'] = $('#category-group input[type="checkbox"]:checked').serializeObject()['search[categories][]']; 
    // info['store_id'] = $('#hidden_store').val();
    
    // $.ajax({
    //   url: '/stores/show_store_with_categories',
    //   type: "POST",
    //   dataType: 'script',
    //   data: info
    // });

		e.preventDefault();

	});
})