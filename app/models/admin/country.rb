# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  region_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Admin::Country < ActiveRecord::Base
	attr_accessible :name, :region_id

	self.table_name = "countries"
	belongs_to :region

	has_many :subscribers,
		:class_name => "Newsletter",
		:foreign_key => "country_id"

		
end
