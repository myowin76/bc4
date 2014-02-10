class Admin::ReportTypesSubMetric < ActiveRecord::Base

	attr_accessible :id, :metric_report_type_id, :sub_metric_id, :number, :created_at, :updated_at

  belongs_to :metric_report_type
  belongs_to :sub_metric

  has_many :report_types_sub_metrics_questions, :class_name => "Admin::ReportTypesSubMetricsQuestion"
	has_many :questions, through: :report_types_sub_metrics_questions, 
  				:class_name => "Admin::Question"

  self.table_name = "report_types_sub_metrics"



end
