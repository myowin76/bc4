class Admin::Question < ActiveRecord::Base

	attr_accessible :id, :question, :created_at, :updated_at

	self.table_name = "questions"

	has_many :report_types_sub_metrics_questions, :class_name => "Admin::ReportTypesSubMetricsQuestion"
	has_many :report_types_sub_metrics, through: :report_types_sub_metrics_questions, 
  				:class_name => "Admin::ReportTypesSubMetric"

end
