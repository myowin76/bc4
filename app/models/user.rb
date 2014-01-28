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
	# attr_accessible :email, :password, :password_confirmation, :remember_me, :username, 
		

	attr_accessible :username, :firstname, :lastname, :job_title, 
			:email, :password, :password_confirmation, :super_user, 
			:approver, :dashboard_alerts, :active, :role_id, :company_id
  
  validates_uniqueness_of :email

		
  belongs_to :company, 
		:class_name => "Admin::Company",
		counter_cache: true
	# has_and_belongs_to_many :roles, :class_name => 'Admin::Role'
	belongs_to :role, :class_name => 'Admin::Role'

	has_secure_password
	# has_many :login_histories

	before_create { generate_token(:auth_token) }

	
	def send_password_reset
	  generate_token(:password_reset_token)
	  self.password_reset_sent_at = Time.zone.now
	  save!
	  # UserMailer.password_reset(self).deliver
	end

	def generate_token(column)
	  begin
	    self[column] = SecureRandom.urlsafe_base64
	  end while User.exists?(column => self[column])
	end

  # def role?(role)
  #     return !!self.roles.find_by_name(role.to_s)
  # end

	def is_approver?
		!!self.is_approver
	end
	
	def is_editor?
		
	end

	def is_super_user?
		!!self.is_super_user
	end
end
