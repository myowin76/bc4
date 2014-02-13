# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string(255)
#  email                  :string(255)
#  firstname              :string(255)
#  lastname               :string(255)
#  job_title              :string(255)
#  super_user             :boolean
#  approver               :boolean
#  dashboard_alerts       :boolean
#  active                 :boolean
#  deleted                :boolean
#  company_id             :integer
#  created_at             :datetime
#  updated_at             :datetime
#  password_digest        :string(255)
#  role_id                :integer
#  auth_token             :string(255)
#  password_reset_token   :string(255)
#  password_reset_sent_at :datetime
#

class User < ActiveRecord::Base

	self.table_name = "users"  
	# attr_accessible :email, :password, :password_confirmation, :remember_me, :username, 
		

	attr_accessible :username, :firstname, :lastname, :job_title, 
			:email, :password, :password_confirmation, :super_user, 
			:approver, :dashboard_alerts, :active, :role_id, :company_id
  
  validates_uniqueness_of :email

		

  has_many :editors, :class_name => "User", :dependent => :destroy, :conditions => "address_type = 'Report Editors'"#, :as => :addressable, 
		
  belongs_to :company, 
		:class_name => "Admin::Company",
		counter_cache: true
	has_and_belongs_to_many :roles, :class_name => 'Admin::Role'
	
	has_many :user_peer_companies, :class_name => "UserPeerCompany"

	has_many :user_peer_companies, :class_name => "UserPeerCompany"
  has_many :peer_companies, -> { order('companies.name ASC')}, through: :user_peer_companies, 
  				:class_name => "Admin::Company"

	has_many :login_histories
  


	has_secure_password
	# has_many :login_histories

	before_create { generate_token(:auth_token) }

	
	def self.find_by_username_or_email(option)
	    where("username =? OR email =?", option, option).first
	end

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
  def is_admin?
  	role.name == 'Administrator'
  end

	def is_approver?
		!!self.is_approver
	end
	
	def is_editor?
		role.name == 'Report Editor'
	end

	def is_super_user?
		!!self.is_super_user
	end
end
