# == Schema Information
#
# Table name: web_widgets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  theme      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Web::Widget < ActiveRecord::Base
	attr_accessible :name, :body, :theme
	self.table_name = "web_widgets"
  has_many :page_widgets, :class_name => "Web::PageWidget"
  has_many :pages, through: :page_widgets, :class_name => "Web::Page"
end
