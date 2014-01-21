# == Schema Information
#
# Table name: bctips
#
#  id                     :integer          not null, primary key
#  title                  :string(255)
#  intro                  :text
#  body                   :text
#  showon_admin_dashboard :boolean
#  showon_wed_dashboard   :boolean
#  publish_from           :date
#  publish_to             :date
#  created_at             :datetime
#  updated_at             :datetime
#

class Admin::Bctip < ActiveRecord::Base

	self.table_name = "bctips"

	attr_accessible :title, :intro, :body, :showon_admin_dashboard, :showon_wed_dashboard, :publish_from, :publish_to


	scope :show_on_admin_dashboard, -> { where(showon_admin_dashboard: :true) }  
	scope :show_on_wed_dashboard, -> { where(showon_wed_dashboard: :true) }  

	validates :title, :presence => true
	validates :intro, :presence => true
	validates :publish_from, :presence => true

	has_many :screengrabs,
    :as => :source,
    :class_name => "Admin::Screengrab"

end
