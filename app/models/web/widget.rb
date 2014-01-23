class Web::Widget < ActiveRecord::Base

	# self.table_name = "widgets"
  has_many :page_widgets, :class_name => "Web::PageWidget"
  has_many :pages, through: :page_widgets, :class_name => "Web::Page"
end
