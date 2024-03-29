# == Schema Information
#
# Table name: web_pages
#
#  id           :integer          not null, primary key
#  meta_title   :string(255)
#  meta_desc    :string(255)
#  meta_keyword :string(255)
#  name         :string(255)
#  page_title   :string(255)
#  page_intro   :text
#  url          :string(255)
#  body         :text
#  ancestry     :string(255)
#  position     :integer
#  published    :boolean
#  hide_on_nav  :boolean
#  content_type :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Web::Page < ActiveRecord::Base
	attr_accessible :id, :meta_title, :meta_desc, :meta_keyword, :name, :page_title, :page_intro, 
					:url, :body, :parent_id, :position, :widget_ids, :hide_on_nav

	# act_as_list
	has_ancestry
	validates :url, uniqueness: true, presence: true,
				exclusion: { in: %w[]}


	before_validation :generate_url


	has_many :page_widgets, :class_name => "Web::PageWidget"
  has_many :widgets, -> { order('page_widgets.position DESC')}, through: :page_widgets, 
  				:class_name => "Web::Widget"

	scope :top_level, lambda {where(:ancestry => nil)}
	scope :nav_items, lambda {where(:hide_on_nav => false)}
	scope :sort, lambda {order("web_pages.position ASC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])
	}
	def to_param
		url
	end

	def self.home_page
		where('url = ?', "home")
	end

	
	def self.not_home
		where('url != ?', "home")
	end
	#scope :not_home, where(:position => 0)

	def generate_url
		self.url ||= name.parameterize
	end

end
