class Admin::ReportTypeSubMetrics < ActiveRecord::Base

	attr_accessible :id, :metric_report_type_id, :sub_metric_id, :number, :created_at, :updated_at

  belongs_to :metric_report_type
  belongs_to :sub_metric

  self.table_name = "report_types_sub_metrics"



end
