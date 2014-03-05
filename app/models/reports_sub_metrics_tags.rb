class ReportsSubMetricsTags < ActiveRecord::Base

	attr_accessible :reports_sub_metric_id, :report_tag_id
  belongs_to :reports_sub_metric, :class_name => "ReportsSubMetric"
  belongs_to :report_tag, :class_name => "Admin::ReportTag"
	
	self.table_name = "reports_sub_metrics_tags"  
end
