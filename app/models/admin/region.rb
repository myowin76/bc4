# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::Region < ActiveRecord::Base
	attr_accessible :name

	self.table_name = "regions"

	has_many :countries
end
