# == Schema Information
#
# Table name: notes
#
#  id               :integer          not null, primary key
#  note             :text
#  note_source_id   :integer
#  note_source_type :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  report_id        :integer
#

class Admin::Note < ActiveRecord::Base
	attr_accessible :note, :created_at, :updated_at, :note_source_type,
				:note_source_id
	self.table_name = "notes"
	
	belongs_to :notable,
		polymorphic: true
		# :class_name => "Admin::Report"
		

end
