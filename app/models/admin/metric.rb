# == Schema Information
#
# Table name: metrics
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  number     :integer
#  score      :integer
#  report_id  :integer
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#

class Admin::Metric < ActiveRecord::Base
	attr_accessible :id, :name, :number, :score, :parent_id, :created_at, :updated_at

	#act_as_list 

	self.table_name = "metrics"

	# validates :number, :numericality => true
	# validates :score, :numericality => { :only_integer => true }

	# belongs_to :report, :class_name => 'Admin::Report' #wrong

	# has_many :report_types_sub_metrics, :class_name => "Admin::ReportTypeSubMetrics"
 #  has_many :sub_metrics, -> { order('report_types_sub_metrics.number ASC')}, through: :report_types_sub_metrics, 
 #  				:class_name => "Admin::SubMetric"

	# belongs_to :metric, :foreign_key => :parent_id
	has_many :sub_metrics, :class_name => 'Admin::SubMetric'

	has_many :metric_report_types, :class_name => "Admin::MetricReportType"
  has_many :report_types,  through: :metric_report_types, 
  				:class_name => "Admin::ReportType"

	

	has_many :notes,
    :as => :note_source,
    :class_name => "Admin::Note"
    
	has_many :screengrabs,
    :as => :source,
    :class_name => "Admin::Screengrab"

	scope :roots, -> { where('parent_id IS NULL') }  
	
end
