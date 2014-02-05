# == Schema Information
#
# Table name: best_practices
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  body       :text
#  company_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Admin::BestPractice < ActiveRecord::Base
	attr_accessible :name, :body, :company_id, :screengrabs_attributes
	self.table_name = "best_practices"

  belongs_to :company
  has_many :screengrabs, as: :source
  has_many :best_practice_links, :class_name => 'Admin::BestPracticeLink'

  accepts_nested_attributes_for :screengrabs, :allow_destroy => true
end
