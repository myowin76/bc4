# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  url               :string(255)
#  renew_date        :date
#  company_type_id   :integer
#  company_status_id :integer
#  sector_id         :integer
#  country_id        :integer
#  reports_count     :integer
#  users_count       :integer
#  active            :boolean
#  created_at        :datetime
#  updated_at        :datetime
#  icon_file_name    :string(255)
#  icon_content_type :string(255)
#  icon_file_size    :integer
#  icon_updated_at   :datetime
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#  subscription_id   :integer
#

class Admin::Company < ActiveRecord::Base
	attr_accessible :id, :name, :url, :renew_date, :company_type_id, :sector_id, :country_id, :reports_count, :company_status_id,
                :icon, :logo, :icon_file_name, :logo_file_name, :created_at, :updated_at
  
  belongs_to :company_type
  belongs_to :sector
  belongs_to :country
  belongs_to :subscription
  belongs_to :company_status
  has_many :reports

  has_many :user_peer_companies, :class_name => "UserPeerCompany"
  # has_many :users, -> { order('companies.name DESC')}, through: :user_peer_companies, 
  #         :class_name => "User"

  # has_many :company_commentaries, :class_name => "Admin::CompanyCommentary"
  # has_many :commentaries, -> { order('page_widgets.position DESC')}, 
  #         through: :company_commentaries, 
  #         :class_name => "Admin::CompanyCommentary"
  # has_many :users, :foreign_key => "company_id"

  self.table_name = "companies"
  
  # validation
  # validates :name,:renew_date, :company_type_id, :sector_id, :country_id, :company_status_id, :presence => true

  # attachment
  has_attached_file :icon, 
  	:styles => {:normal => '41x41'},
  	:default_url => "/assets/default_:style_avatar.png",
  	:url  => "/assets/icons/:style/:basename.:extension",
    # :path => "/assets/companies/:id/icons/:style/:basename.:extension",
    :path => "/assets/companies/icons/:basename.:extension",
    # :storage => :filesystem,

    :storage => :s3,
    
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :s3_permissions => {
      :default => :public_read,
    },
    :s3_protocol => 'http',
      :s3_options => {
        :server_side_encryption => 'AES256',
        :storage_class => :reduced_redundancy
        # :content_disposition => 'attachment'
      },
    :s3_headers => {"Content-Disposition" => "attachment"},
    :bucket => "bowencraggs"

    # validates_attachment_presence :icon
    # validates_attachment_content_type :icon, 
	   #  :content_type => ['image/jpeg', 'image/pjpeg', 
				# 					   'image/jpg', 'image/png']



  has_attached_file :logo, 
  	:styles => {:normal => '210x65'},
  	:default_url => "/images/default_:style_avatar.png",
  	:url  => "/assets/logos/:style/:basename.:extension",
    # :path => "/assets/companies/:id/logos/:style/:basename.:extension",
    :path => "/assets/companies/logos/:basename.:extension",
    
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :s3_permissions => {
      :default => :public_read,
    },
    :s3_protocol => 'http',
      :s3_options => {
        :server_side_encryption => 'AES256',
        :storage_class => :reduced_redundancy
        # :content_disposition => 'attachment'
      },
    :s3_headers => {"Content-Disposition" => "attachment"},
    :bucket => "bowencraggs"

    # validates_attachment_presence :logo
    # validates_attachment_content_type :logo, 
	   #  :content_type => ['image/jpeg', 'image/pjpeg', 
				# 					   'image/jpg', 'image/png']

  
  # Scopes to do  
  # find companies with public reports?
  # find active companies
  # super user
  scope :order_by, lambda { |option|
    # includes(:editors).
    # where('user_id = ? AND IS NOT NULL', user.id)
  }

  scope :last_updated_by, lambda { |user|
    # includes(:editors).
    # where('user_id = ? AND IS NOT NULL', user.id)
  }

  def latest_report
    reports.order(:publish_date).last  
  end

  def demo_subscriber?
    
  end

  def standard_subscriber?
    
  end

  def premium_subscriber?
    
  end

  def saved_by(user)
    self.updated_by = user.id
    self.save
  end

  def updated_by(user)
    self.updated_by = user.id
    self.save
  end

end
