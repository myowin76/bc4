class Admin::SubMetric < ActiveRecord::Base

	attr_accessible :id, :name, :number, :metric_id, :max_score, :created_at, :updated_at
  belongs_to :metric, :class_name => "Admin::Metric"

  self.table_name = "sub_metrics"


  has_many :report_types_sub_metrics, :class_name => "Admin::ReportTypeSubMetrics"
  has_many :metric, -> { order('report_types_sub_metrics.number ASC')}, through: :report_types_sub_metrics, 
  				:class_name => "Admin::Metric"
end
