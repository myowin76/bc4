class ReportsSubMetric < ActiveRecord::Base

	attr_accessible :id, :reports_metric_id, :sub_metric_id, :total_score, :summary, :created_at, :updated_at,
					:report_tag_ids

  belongs_to :reports_metrics, :class_name => "ReportsMetric"
  belongs_to :sub_metric, :class_name => "Admin::SubMetric"

  has_many :reports_sub_metrics_notes

  has_and_belongs_to_many :report_tags, :class_name => "Admin::ReportTag"

  has_many :reports_sub_metrics_tags, :class_name => "ReportsSubMetricsTags"
  has_many :report_tags, through: :reports_sub_metrics_tags, 
  				:class_name => "Admin::ReportTag"

  has_paper_trail	#, :on => [:update], only => [:total_score, :summary, :reason, :updated_by, :created_at, :updated_at]


  has_many :screengrabs, as: :source, :class_name => "Admin::Screengrab"
  accepts_nested_attributes_for :screengrabs, :allow_destroy => true
end
