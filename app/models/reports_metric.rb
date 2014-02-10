class ReportsMetric < ActiveRecord::Base


  belongs_to :report
  belongs_to :metric

  has_many :reports_sub_metrics
  
end
