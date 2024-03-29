class	ReportPdf < Prawn::Document
	include ActionView::Helpers::SanitizeHelper
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

    company_logo

    font("Garamond") do
    	pad_bottom(18) { text "#{@report.report_name}", :size => 16, :style => :normal }
    end

    @report.reports_metrics.includes(:metric).order('metrics.number asc').each do |report_metric|
    	
    	font("Garamond") do
	    	text "#{report_metric.metric.name}", :size => 14
	    	text "#{report_metric.reports_sub_metrics.sum(:total_score)}", :size => 14
	    end

	    report_metric.reports_sub_metrics.includes(:sub_metric).order('sub_metrics.number asc').each do |report_sub_metric|
	    	text "#{report_sub_metric.sub_metric.name}", :size => 12
	    	text "#{report_sub_metric.total_score}", :size => 12

	    	@num_cols = 3
	    	@sg_count = report_sub_metric.screengrabs.count
	    	@num_rows = @sg_count / @num_cols
	    	if (@sg_count % @num_cols) > 0
	    		@num_rows = @num_rows + 1
	    	end

	    	define_grid(:columns => @num_cols, :rows => @num_rows, :gutter => 10)

	    	text "<b>test</b>", :inline_format => true
	    	# text "#{@num_rows}"
	   #  	bounding_box([100, cursor], :width => 200, :height => 150) do
				# 	stroke_bounds
				# 	text "count #{bounds.width}"
				#  	text "rows: #{@num_rows}"
				
				 
				# end

	    	# report_sub_metric.screengrabs.each do |sg|
	    	# 	[:left, :center, :right].each do |position|
				 	# 	image open("#{sg.image.url(:thumbnails)}"), :fit => [150, 100], :position => position
				 	# end
		    	
		    # end
	    end

	    

    end
    # copyright
	end

	def company_logo
		image open("#{@report.company.logo.url(:normal)}"), :fit => [200, 50], :position => :left	
		
	end

	def copyright
		text "Copyright &copy; Bowencraggs #{DateTime.now.strftime('%Y')}", :size => 13
	end



end