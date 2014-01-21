# == Schema Information
#
# Table name: company_statuses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::CompanyStatus < ActiveRecord::Base

	attr_accessible :name

	self.table_name = "company_statuses"

	has_many :companies
end
