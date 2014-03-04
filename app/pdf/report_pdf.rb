class	ReportPdf < Prawn::Document

	def initialize(report)
    
    super(
    	:page_layout => :portrait, #:landscape, 
    	:page_size => "A4", 
    	:margin => [20,30]
    	)
		@report = report
		
		font_path = "#{Rails.root}/app/assets/fonts/simoncini_garamond_bold-webfont.ttf"
		font_families.update("Garamond" => {
		 :normal => { :file => font_path, :font => "Garamond" },
		 :italic => { :file => font_path, :font => "Garamond-Italic" },
		 :bold => { :file => font_path, :font => "Garamond-Bold" }
		})

		define_grid(:columns => 6, :rows => 8, :gutter => 10)
    company_logo
    font("Garamond") do
    	pad_bottom(18) { text "#{@report.report_name}", :size => 16, :style => :normal }
    end
    

	end

	def company_logo
		image open("#{@report.company.logo.url(:normal)}"), :fit => [200, 50], :position => :center	
		
	end

	def copyright
		
	end



end