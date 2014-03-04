class	ReportPdf < Prawn::Document

	def initialize(report)
    
    super(
    	:page_layout => :portrait, #:landscape, 
    	:page_size => "A4", 
    	:margin => [20,30]
    	)
		@report = report
		define_grid(:columns => 6, :rows => 8, :gutter => 10)
    company_logo
    text "download me"

	end

	def company_logo
		image open("#{@report.company.logo.url(:normal)}"), :fit => [200, 50], :position => :center	
		
	end

	def copyright
		
	end



end