# == Schema Information
#
# Table name: page_widgets
#
#  id         :integer          not null, primary key
#  page_id    :integer
#  widget_id  :integer
#  position   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Web::PageWidget < ActiveRecord::Base
	attr_accessible :page_id, :widget_id, :position, :widget_ids
	self.table_name = "page_widgets"

  belongs_to :page, :class_name => "Web::Page"
  belongs_to :widget, :class_name => "Web::Widget"
end
