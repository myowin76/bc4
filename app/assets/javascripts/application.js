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
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require dataTables/jquery.dataTables
//= require jquery.ui.datepicker
//= require select2
// require_tree .


$(function() {


    $(".share-users").select2();

    $(".rpt-view-container #metric_accordion").collapse('show')

    //wed score card
    $("#hg-high-medium").on('click',function(e){
        alert("to do");
        e.preventDefault();
    });
    $("#hg-peer-group").on('click',function(e){
       alert("to do"); 
       e.preventDefault();
    });

    // score card table slide 
    $(".tbl-score-card .title").on('click', function(){
        // $(this).closest('li').next('.sub-metrics').toggleClass('show', 2000);
        $(this).closest('li').toggleClass('show-sub', 2000);
    });

    $('.report-accordion').on('hide.bs.collapse show.bs.collapse ', function (n) { 
        // $('.report-accordion').children('.panel-default').find('i').each(function({
        //     $(this).toggleClass('panel-arrow-right panel-arrow-down');    
        // })
   
    });


    $("#admin_company_renew_date").datepicker({
        dateFormat: 'dd/mm/yy',
        showOn: "both",
        buttonImage: "/assets/icons/calendar.png"
    });

    $("#admin_project_publish_date").datepicker({
        dateFormat: 'dd/mm/yy',
        showOn: "both",
        buttonImage: "/assets/icons/calendar.png"
    });
    

    $("#published_from").datepicker({
        dateFormat: 'dd/mm/yy',
        showOn: "both",
        buttonImage: "/assets/icons/calendar.png",
        onClose: function( selectedDate ){
          $( "#published_to" ).datepicker( "option", "minDate", selectedDate );
        }
    });

    $("#published_to").datepicker({
        dateFormat: 'dd/mm/yy',
        showOn: "both",
        buttonImage: "/assets/icons/calendar.png",
        onClose: function( selectedDate ){
          $( "#published_from" ).datepicker( "option", "maxDate", selectedDate );
        }
    });






    $('.tabs a').click(function (e) {
      e.preventDefault();
      $(this).tab('show');

    })

    $('#report_tab li:eq(1) a').tab('show')




    // filter btn-reset click to do


    // show hide filter button

    $('.btn-filter').on('click', function(){
        text = $(this).text();
        
        $('.well.filters').slideToggle('slow', function(e){
            e.preventDefault();
          //   $('.btn-filter').html(function(i, text){

          //       return text === "Show Filter" ? "<i></i>Show Filter" : "<i></i>Hide Filter";
          // })

        });
    });

      $('.btn-all-metric').on('click', function(){
        var info = {}

        $.ajax({
          url: '/admin/companies/best_practice_all',
          type: "POST",
          dataType: 'script',
          data: info,
          success: function(data){

          }
        });
      });

    
});