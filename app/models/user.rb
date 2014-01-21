# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  username         :string(255)
#  email            :string(255)
#  firstname        :string(255)
#  lastname         :string(255)
#  job_title        :string(255)
#  super_user       :boolean
#  approver         :boolean
#  dashboard_alerts :boolean
#  active           :boolean
#  deleted          :boolean
#  company_id       :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class User < ActiveRecord::Base

	self.table_name = "users"  
	attr_accessible :email, :password, :password_confirmation, :remember_me, :username, 
		:role_ids, :company_id

		
  belongs_to :company, 
		:class_name => "Admin::Company",
		counter_cache: true
	has_and_belongs_to_many :roles, :class_name => 'Admin::Role'
	# has_many :login_histories


	def is_approver?
		!!self.is_approver
	end
	
	def is_editor?
		
	end

	def is_super_user?
		!!self.is_super_user
	end
end
