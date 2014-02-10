class Admin::ReportTypesSubMetricsQuestion < ActiveRecord::Base
  belongs_to :report_types_sub_metric, :class_name => "Admin::ReportTypesSubMetric"
  belongs_to :question, :class_name => "Admin::Question"

    self.table_name = "report_types_sub_metrics_questions"

  # belongs_to :question,
  #   :class_name => 'Admin::ReportTypeQuestion'
end
