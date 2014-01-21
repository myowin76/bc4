module ApplicationHelper

	def page_title title
	  content_for(:page_title) { title }
	end

	def page_lead lead
	  content_for(:page_lead) { lead }
	end
end
