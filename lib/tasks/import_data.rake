require 'csv'    

namespace :import do

	


	# IMPORT COUNTRIES
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
			  	:region_id => 1,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)

			end # one row end
		end # csv end
  end # task end

  # IMPORT COMPANIES
  
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
			  active_cell = row[10]
			  renew_date_cell = row[11]
			  created_cell = row[14]
			  updated_cell = row[16]
			  
			  
 				record = Admin::Company.new(
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
			  	:active => active_cell,
			  	:renew_date => renew_date_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	record.save!
			end # one row end
		end # csv end
  end # task end


  # IMPORT USERS
	  task :users => :environment do
			
			User.delete_all
	    CSV.foreach(File.join(Rails.root, 'bin', 'users.csv')) do |row|
			  unless row.join.blank?
				  # cells map
				  id_cell = row[1]
				  username_cell = row[2]
				  firstname_cell = row[2]
				  lastname_cell = row[2]
				  email_cell = row[2]
				  password_cell = row[2]
				  role_id_cell = row[2]
				  company_id_cell = row[2]
					job_title_cell = row[2]
				  created_cell = row[4]
				  updated_cell = row[6]
				  
	 				record = User.new(
				  	:id => id_cell,
				  	:username => username_cell,
				  	:email => email_cell,
				  	:password => password_cell,
				  	:password_confirmation => password_cell,
				  	:firstname => firstname_cell,
				  	:lastname => lastname_cell,
				  	:company_id => company_id_cell,
				  	:role_id => role_id_cell,
				  	:job_title => job_title_cell,
				  	:created_at => created_cell,
				  	:updated_at => updated_cell
			  	)
			  	record.save!

				end # one row end
			end # csv end
	  end # task end



  # IMPORT PROJECTS
  task :projects => :environment do
		
		Admin::Project.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'projects.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  name_cell = row[1]
			  publish_date_cell = row[2]
			  # created_by_cell = row[3]
			  created_at_cell = row[4]
			  # updated_by_cell = row[5]
			  updated_at_cell = row[6]
			  
			  
 				Admin::Project.create(
 					:id => id_cell,
			  	:name => name_cell,
			  	:publish_date => publish_date_cell,
			  	# :created_by => created_cell,
			  	:created_at => created_at_cell,
			  	# :updated_by => updated_cell,
			  	:updated_at => updated_at_cell
		  	)

			end # one row end
		end # csv end
  end # task end


	# IMPORT REPORT TYPE
		  task :report_types => :environment do
			
			Admin::ReportType.delete_all
	    CSV.foreach(File.join(Rails.root, 'bin', 'report_types.csv') ) do |row|
			  unless row.join.blank?
				  # cells map
				  id_cell = row[10]
				  name_cell = row[0]
				  created_cell = row[5]
				  updated_cell = row[7]
				  
				  
	 				Admin::ReportType.create(
	 					:id => id_cell,
				  	:name => name_cell,
				  	:created_at => created_cell,
				  	:updated_at => updated_cell
			  	)

				end # one row end
			end # csv end
	  end # task end
  # IMPORT REPORTS
    task :reports => :environment do
                
      Admin::Report.delete_all
		    CSV.foreach(File.join(Rails.root, 'bin', 'reports.csv')) do |row|
		    unless row.join.blank?
          # cells map
          id_cell = row[0]
          
          company_id_cell = row[2]
          project_id_cell = row[2]
          report_type_id_cell = row[1]
          company = Admin::Company.find(company_id_cell)
          project = Admin::Project.find(project_id_cell)
          report_type = Admin::ReportType.find(report_type_id_cell)

          # name_cell = "#{company.name}  #{report_type.name} #{project.publish_date.strftime("%Y")}"
          
          publish_date_cell = row[7]
          
          created_cell = row[10]
          updated_cell = row[12]
          
          Admin::Report.create(
            :id => id_cell,
            :name => name_cell,
            :report_type_id => report_type_id_cell,
            :company_id => company_id_cell,
            :publish_date => publish_date_cell,
            :created_at => created_cell,
            :updated_at => updated_cell
          )

        end # one row end
		  end # csv end
		end # task end


  # IMPORT REPORT NOTES
  task :report_notes => :environment do
		
		Admin::Note.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'report_notes.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[1]
			  note_cell = row[2]
			  created_cell = row[4]
			  updated_cell = row[6]
			  
 				record = Admin::Note.new(
			  	:note => note_cell,
			  	:note_source_id => id_cell,
			  	:note_source_type => 'Admin::Report',
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end

	task :best_practices => :environment do
		
		Admin::BestPractice.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'best_practices.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[1]
			  name_cell = row[2].to_s.truncate(30)
			  body_cell = row[2]
			  created_cell = row[4]
			  updated_cell = row[6]
			  
 				record = Admin::BestPractice.new(
			  	:note_source_id => id_cell,
			  	:note_source_type => 'Admin::BestPractice',
			  	:name => name_cell,
			  	:body => body_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end


  task :best_prectice_screengrabs => :environment do
		
		Admin::Note.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'report_notes.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[1]
			  note_cell = row[2]
			  created_cell = row[4]
			  updated_cell = row[6]
			  
 				record = Admin::Note.new(
			  	:note => note_cell,
			  	:note_source_id => id_cell,
			  	:note_source_type => 'Admin::Report',
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end

  task :report_tags => :environment do
		
		Admin::ReportTag.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'report_tags.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[9]
			  name_cell = row[1]
			  # created_cell = row[4]
			  # updated_cell = row[6]
			  
 				record = Admin::ReportTag.new(
			  	:id => id_cell,
			  	:name => name_cell
			  	# :created_at => created_cell,
			  	# :updated_at => updated_cell
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end

  task :questions => :environment do
		
		Admin::Question.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'questions.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  question_cell = row[3]
			  created_cell = row[7]
			  updated_cell = row[9]
			  
 				record = Admin::Question.new(
			  	:id => id_cell,
			  	:question => question_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)
		  	record.save!

			end # one row end
		end # csv end
  end # task end


  # IMPORT METRICS OF REPORTS
	  task :reports_metrics => :environment do
		
		ReportsMetric.delete_all
    CSV.foreach(File.join(Rails.root, 'bin', 'report_metric.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  report_id_cell = row[2]
			  metric_id_cell = row[3]
			  total_score_cell = row[5]
			  created_cell = row[7]
			  updated_cell = row[9]
			  
			  
 				ReportsMetric.create(
 					:id => id_cell,
			  	:report_id => report_id_cell,
			  	:metric_id => metric_id_cell,
			  	:total_score => total_score_cell,
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)

			end # one row end
		end # csv end
  end # task end

  # IMPORT SUB METRICS OF REPORTS
	  task :reports_sub_metrics => :environment do
		
		ReportsSubMetric.delete_all
    # CSV.foreach(File.join(Rails.root, 'bin', 'report_sub_metric_view.csv')) do |row|
    CSV.foreach(File.join(Rails.root, 'bin', 'useit.csv')) do |row|
		  unless row.join.blank?
			  # cells map
			  id_cell = row[0]
			  reports_metric_id_cell = row[1]
			  submetric_id_cell = row[2]
			  total_score_cell = row[3]
			  # summary_cell = row[3]
			  created_cell = row[6]
			  updated_cell = row[7]
			  
			  
 				ReportsSubMetric.create(
 					:id => id_cell,
			  	:reports_metric_id => reports_metric_id_cell,
			  	:sub_metric_id => submetric_id_cell,
			  	:total_score => total_score_cell,
			  	# :summary => summary_cell.gsub('\"', '""'),
			  	:created_at => created_cell,
			  	:updated_at => updated_cell
		  	)

			end # one row end
		end # csv end
  end # task end

end # namespace end