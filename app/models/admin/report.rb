# == Schema Information
#
# Table name: reports
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  project_id     :integer
#  company_id     :integer
#  report_type_id :integer
#  publish_date   :date
#  approved       :boolean
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

# TO DO ? HSTORE to store all the data after published

class Admin::Report < ActiveRecord::Base
	attr_accessible :id, :name, :project_id, :company_id, :publish_date, 
    :report_type_id, :created_at, :updated_at
	self.table_name = "reports"

  belongs_to :project, 
  	:class_name => "Admin::Project",
  	counter_cache: true
  belongs_to :company, 
  	:class_name => "Admin::Company",
  	counter_cache: true
  belongs_to :report_type, 
    :class_name => "Admin::ReportType"
  belongs_to :report_state,
    :class_name => 'Admin::ReportState'
  belongs_to :approver,
    :class_name => "User"
  has_many :metrics,
  	:class_name => "Admin::Metric"	
  has_many :notes,
    :as => :note_source,
    :class_name => "Admin::Note"
	has_many :screengrabs,
    :as => :source,
    :class_name => "Admin::Screengrab"
    
  # Scopes
  scope :published, -> { where(published: :true) }  

  scope :created_by, lambda { |user|
    # includes(:assignee).
    # where('user_id = ? AND IS NOT NULL', user.id)
  }
  scope :approved_by, lambda { |user|
    # where('user_id = ? AND IS NOT NULL', user.id)
  }


  # TO do
  # scope - reports awaiting approvals
  # scopt - reports assigned to me


  def report_name
    unless publish_date.nil?
      "#{company.name} #{report_type.name} #{publish_date.strftime("%Y")}"
    else
      "#{company.name} #{report_type.name}"
    end
  end
  # to do - pending for publish reports( where containing project is not yet publishd -join project)
  # scope :pending_for_publish -> { }

  # methods
  def latest_reports
  	# find latest 10 reports order desc		
  end

  def latest_published_reports
    # find latest 10 published reports order desc   
  end

  def latest_published_reports company
    # find all reports by given company order by esc
    where(company_id: company.id).order(created_at: :desc)
  end

  def public_reports(company, type)
  	
  end	

end
