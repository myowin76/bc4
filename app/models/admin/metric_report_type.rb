class Admin::MetricReportType < ActiveRecord::Base
  belongs_to :metric
  belongs_to :report_type

  
end
