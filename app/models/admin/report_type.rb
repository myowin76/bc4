# == Schema Information
#
# Table name: report_types
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  public         :boolean
#  notes          :text
#  exe_summary    :boolean
#  recommendation :boolean
#  best_practice  :boolean
#  supplementary  :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class Admin::ReportType < ActiveRecord::Base
	attr_accessible :name, :public, :notes, :exe_summary, :recommendation, :best_practice, :supplementary
	self.table_name = "report_types"

	has_many :reports
end
