# == Schema Information
#
# Table name: company_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::CompanyType < ActiveRecord::Base
	attr_accessible :name
	self.table_name = "company_types"
	
	has_many :companies
end
