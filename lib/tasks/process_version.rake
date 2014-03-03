namespace :process do

	# 
	task :versions => :environment do
		Version.delete_all

		@reports_metrics = ReportsMetric.all
		@reports_sub_metrics = ReportsSubMetric.all


		

  end # task end


end # namespace end