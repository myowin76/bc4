class Admin::MetricReportType < ActiveRecord::Base

	attr_accessible :id, :number, :metric_id, :report_type_id, :created_at, :updated_at

  belongs_to :metric
  belongs_to :report_type

  self.table_name = "metric_report_types"

  has_many :report_types_sub_metrics, :class_name => "Admin::ReportTypeSubMetrics"
  has_many :sub_metrics, -> { order('report_types_sub_metrics.number ASC')}, through: :report_types_sub_metrics, 
  				:class_name => "Admin::SubMetric"
  
end
