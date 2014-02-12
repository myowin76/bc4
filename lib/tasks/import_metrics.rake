require 'csv'    

namespace :import do

	# IMPORT METRICS
	task :metrics => :environment do
		
		Admin::Metric.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'metrics.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  name_cell = row[3]
			  number_cell = row[2]
			  score_cell = row[5]
			  created_cell = row[7]
			  updated_cell = row[9]
			  
			  
 				report = Admin::Metric.new(
 					:id => id_cell,
			  	:name => name_cell,
			  	:number => number_cell,
			  	:score => score_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	report.save!

			end # one row end
		end # csv end
  end # task end

  # IMPORT SUBMETRICS	
	task :sub_metrics => :environment do
		
		Admin::SubMetric.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'sub_metrics.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  metric_id_cell = row[1]
			  name_cell = row[5]
			  max_score_cell = row[7]
			  created_cell = row[10]
			  # updated_cell = row[12]
			  
			  
 				record = Admin::SubMetric.new(
 					:id => id_cell,
			  	:name => name_cell,
			  	:metric_id => metric_id_cell,
			  	:max_score => max_score_cell,
			  	:created_at => DateTime.parse(created_cell),
			  	# :updated_at => DateTime.parse(updated_cell)
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end


  # IMPORT Metrics of Report Type	
	task :report_type_metrics => :environment do
		
		Admin::MetricReportType.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'report_type_metrics.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  metric_id_cell = row[2]
			  report_type_id_cell = row[1]
			  number_cell = row[3]
			  created_cell = row[5]
			  updated_cell = row[7]
			  
			  
 				record = Admin::MetricReportType.new(
 					:id => id_cell,
			  	:metric_id => metric_id_cell,
			  	:report_type_id => report_type_id_cell,
			  	:number => number_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end


  # IMPORT SubMetrics of Metrics in a Report Type	
	task :report_type_sub_metrics => :environment do
		
		Admin::ReportTypeSubMetrics.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'report_type_metric_sub_metrics.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  metric_report_type_id_cell = row[1]
			  sub_metric_id_cell = row[2]
			  number_cell = row[3]
			  created_cell = row[5]
			  updated_cell = row[7]
			  
			  
 				record = Admin::ReportTypeSubMetrics.new(
 					:id => id_cell,
			  	:metric_report_type_id => metric_report_type_id_cell,
			  	:sub_metric_id => sub_metric_id_cell,
			  	:number => number_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end

  # IMPORT SubMetric Screengrabs
	# task :report_type_sub_metrics => :environment do
		
	# 	Admin::Screengrab.delete_all
 #    CSV.foreach(File.join(Rails.root, 'bin', 'report_sub_metric_screengrabs.csv')) do |row|
	# 	  unless row.join.blank?
	# 		  # cells map
	# 		  id_cell = row[0]
	# 		  metric_report_type_id_cell = row[1]
	# 		  sub_metric_id_cell = row[2]
	# 		  number_cell = row[3]
	# 		  created_cell = row[5]
	# 		  updated_cell = row[7]
			  
			  
 # 				record = Admin::Screengrab.new(
 # 					:id => id_cell,
	# 		  	:metric_report_type_id => metric_report_type_id_cell,
	# 		  	:sub_metric_id => sub_metric_id_cell,
	# 		  	:number => number_cell,
	# 		  	:created_at => created_cell,
	# 		  	:updated_at => updated_cell
	# 	  	)
	# 	  	record.save!

	# 		end # one row end
	# 	end # csv end
  #end # task end

  # IMPORT SubMetric Screengrabs
	task :report_type_sub_metrics_question => :environment do
		
		Admin::ReportTypesSubMetricsQuestion.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'sub-questions.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  report_type_sub_metric_id_cell = row[1]
			  question_id_cell = row[2]
			  order_cell = row[3]
			  created_cell = row[5]
			  updated_cell = row[7]
			  
			  
 				record = Admin::ReportTypesSubMetricsQuestion.new(
 					:id => id_cell,
			  	:report_types_sub_metric_id => report_type_sub_metric_id_cell,
			  	:question_id => question_id_cell,
			  	:order => order_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end


end