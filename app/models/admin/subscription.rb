# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Admin::Subscription < ActiveRecord::Base

	attr_accessible :name, :code
	self.table_name = "subscriptions"

	has_many :companies
end
