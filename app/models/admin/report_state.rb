# == Schema Information
#
# Table name: report_states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::ReportState < ActiveRecord::Base

	attr_accessible :name, :code
	self.table_name = "report_states"
end
