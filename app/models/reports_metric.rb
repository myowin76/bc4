class ReportsMetric < ActiveRecord::Base

	attr_accessible :id, :report_id, :metric_id, :total_score

  belongs_to :report, :class_name => "Admin::Report"
  belongs_to :metric,:class_name => "Admin::Metric"

  has_many :reports_sub_metrics
  
end
