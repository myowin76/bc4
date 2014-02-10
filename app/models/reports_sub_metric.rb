class ReportsSubMetric < ActiveRecord::Base
  belongs_to :reports_metrics
  belongs_to :sub_metric

  has_many :reports_sub_metrics_notes
end
