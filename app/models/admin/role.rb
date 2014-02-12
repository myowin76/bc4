# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::Role < ActiveRecord::Base
	attr_accessible :name
	self.table_name = "roles"
	
	has_and_belongs_to_many :users, :class_name => 'User'
	
end
