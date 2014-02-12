class Admin::MetricReportType < ActiveRecord::Base

	attr_accessible :id, :number, :metric_id, :report_type_id, :created_at, :updated_at

  belongs_to :metric
  belongs_to :report_type

  self.table_name = "metric_report_types"

  has_many :report_types_sub_metrics, :class_name => "Admin::ReportTypesSubMetric"
  has_many :sub_metrics, -> { order('report_types_sub_metrics.number DESC')}, through: :report_types_sub_metrics, 
  				:class_name => "Admin::SubMetric"


	has_many :report_type_metric_tags, :class_name => "Admin::ReportTypeMetricTags"
  has_many :report_tags, through: :report_type_metric_tags, 
  				:class_name => "Admin::ReportTag"  
end
