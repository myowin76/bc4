class Web::Widget < ActiveRecord::Base
	attr_accessible :name, :body, :theme
	self.table_name = "web_widgets"
  has_many :page_widgets, :class_name => "Web::PageWidget"
  has_many :pages, through: :page_widgets, :class_name => "Web::Page"
end
