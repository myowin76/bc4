# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  company    :string(255)
#  job_title  :string(255)
#  country_id :integer
#  website    :string(255)
#  bc_tip     :boolean
#  wen        :boolean
#  specials   :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Newsletter < ActiveRecord::Base
	attr_accessible :email, :first_name, :last_name, :company, :job_title, :country_id, :website, :bc_tip, :wen, :specials
	 
  belongs_to :country,
  	:class_name => "Admin::Country"

 	validates :email, :presence => true
end
