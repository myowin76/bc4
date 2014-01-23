require 'csv'    

namespace :import do
  
  task :companies => :environment do
		Admin::Company.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'companies.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  type_cell = row[1]
			  status_cell = row[2]
			  sector_cell = row[3]
			  country_cell = row[4]
			  subscription_cell = row[5]
			  name_cell = row[6]
			  icon_cell = row[7]
			  logo_cell = row[8]
			  url_cell = row[9]
			  # active_cell = row[11]
			  renew_date_cell = row[11]
			  created_cell = row[14]
			  updated_cell = row[16]
			  
			  
 				Admin::Company.create(
 					:id => id_cell,
			  	:company_type_id => type_cell,
			  	:company_status_id => status_cell,
			  	:sector_id => sector_cell,
			  	:country_id => country_cell,
			  	:subscription_id => subscription_cell,
			  	:name => name_cell,
			  	:icon_file_name => icon_cell,
			  	:logo_file_name => logo_cell,
			  	:url => url_cell,
			  	# :active => address3_cell,
			  	:renew_date => renew_date_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)

			end # one row end
		end # csv end
  end # task end

  task :countries => :environment do
		
		Admin::Country.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'countries.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  name_cell = row[1]
			  created_cell = row[3]
			  updated_cell = row[5]
			  
			  
 				Admin::Country.create(
 					:id => id_cell,
			  	:name => name_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)

			end # one row end
		end # csv end
  end # task end

  task :reports => :environment do
		
		Admin::Report.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'reports.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  company_id_cell = row[2]
			  report_type_id_cell = row[1]
			  publish_date_cell = row[7]
			  created_cell = row[10]
			  updated_cell = row[12]
			  
			  
 				Admin::Report.create(
 					:id => id_cell,
			  	# :name => name_cell,
			  	:report_type_id => report_type_id_cell,
			  	:company_id => company_id_cell,
			  	:publish_date => publish_date_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)

			end # one row end
		end # csv end
  end # task end

end # namespace end