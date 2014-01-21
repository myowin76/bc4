# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  publish_date    :date
#  ft_index        :boolean
#  in_result_table :boolean
#  can_compare     :boolean
#  reports_count   :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Admin::Project < ActiveRecord::Base
	attr_accessible :name, :publish_date, :ft_index, :in_result_table, :can_compare, :reports_count

	self.table_name = "projects"
	
	has_many :reports
	

	scope :recent_projects, -> { order ('created_at desc').limit(10)}
	# custom associations
	# has_many :recent_reports,
 	#    -> { order('created_at desc').limit(2) },
 	#    class_name: "Report"

 	# to do
 	# - scope publishd projects
 	# - scope ft-index-projects


end
