class Admin::ReportTypesSubMetricsQuestion < ActiveRecord::Base
	attr_accessible :id, :report_types_sub_metric_id, :question_id, :order, :created_at, :updated_at

  belongs_to :report_types_sub_metric, :class_name => "Admin::ReportTypesSubMetric"
  belongs_to :question, :class_name => "Admin::Question"

    self.table_name = "report_types_sub_metrics_questions"

  # belongs_to :question,
  #   :class_name => 'Admin::ReportTypeQuestion'
end
