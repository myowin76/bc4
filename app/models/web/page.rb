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
#  created_at   :datetime
#  updated_at   :datetime
#

class Web::Page < ActiveRecord::Base
	attr_accessible :meta_title, :meta_desc, :meta_keyword, :name, :page_title, :page_intro, 
					:url, :body, :parent_id, :position

	# act_as_list
	has_ancestry
	validates :url, uniqueness: true, presence: true,
				exclusion: { in: %w[]}


	before_validation :generate_url

	scope :top_level, where(:ancestry => nil)
	def to_param
		url
	end

	def self.home_page
		where('url = ?', "/")
	end
	def self.not_home
		where('url != ?', "/")
	end
	#scope :not_home, where(:position => 0)

	def generate_url
		self.url ||= name.parameterize
	end

end
