require 'csv'    

namespace :import do

	  task :projectids_to_reports => :environment do
		
    CSV.foreach(File.join(Rails.root, 'bin', 'report_publish_milestone.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  report_id_cell = row[1].to_i
			  project_id = row[2].to_i
			  
			  @report = Admin::Report.find(report_id_cell)
			  unless @report.nil?

	 				@report.update_attribute(
	 					:project_id,  project_id
			  	)
			  end

			end # one row end
		end # csv end
  end # task end


 end