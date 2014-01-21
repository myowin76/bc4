# == Schema Information
#
# Table name: report_tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::ReportTag < ActiveRecord::Base
	attr_accessible :name
	
	self.table_name = "report_tags"
	validates :name, :presence => true
end
