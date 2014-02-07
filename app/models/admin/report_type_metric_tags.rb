class Admin::ReportTypeMetricTags < ActiveRecord::Base
  belongs_to :metric_report_type, :class_name => "Admin::MetricReportType"
  belongs_to :report_tag, :class_name => "Admin::ReportTag"

	self.table_name = "report_type_metric_tags"
  
  

end
