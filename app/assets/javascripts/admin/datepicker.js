$("#admin_company_renew_date").datepicker({
    dateFormat: 'dd/mm/yy',
    showOn: "both",
    buttonImage: "/assets/icons/calendar.png"
});

$("#admin_project_publish_date").datepicker({
    dateFormat: 'dd/mm/yy',
    showOn: "both",
    buttonImage: "/assets/icons/calendar.png",
    onSelect: function(dateText, inst) {
        var startDate = new Date(dateText);
        var selectedYear = startDate.getFullYear(); // selected year
        $existed_text = $("#project-new-report-title").val();
        $("#project-new-report-title").val($existed_text + " " + selectedYear);
    }
});