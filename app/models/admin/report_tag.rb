# == Schema Information
#
# Table name: report_tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::ReportTag < ActiveRecord::Base
	attr_accessible :id, :name
	
	self.table_name = "report_tags"
	# validates :name, :presence => true
	has_many :reports_sub_metrics_tags, :class_name => "ReportsSubMetricsTags"
  has_many :reports_sub_metrics, through: :reports_sub_metrics_tags, 
  				:class_name => "ReportsSubMetric"

	has_many :report_type_metric_tags, :class_name => "Admin::ReportTypeMetricTags"
  has_many :metric_report_types, through: :report_type_metric_tags, 
  				:class_name => "Admin::MetricReportType"  
end
