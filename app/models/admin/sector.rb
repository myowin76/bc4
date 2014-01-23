# == Schema Information
#
# Table name: sectors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::Sector < ActiveRecord::Base
	attr_accessible :id, :name, :created_at, :updated_at, :mig_id
	self.table_name = "sectors"
	
  has_many :companies
end