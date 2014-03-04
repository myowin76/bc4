class Wed::WedController < ApplicationController
  layout 'wed/wed'
  respond_to :js, :html, :json
  # respond_to :js, :html, :only => :best_practice 

  # to do : add custom layout 2 columns
  before_action :authorize
  before_action :get_companies, only: [:results_table, :my_peers, :advanced_search]
  before_action :get_my_peers, only: [:dashboard, :company_profile, :score_card, :progress_chart, :my_peers, :peer_comparison]

  

  def dashboard

    @page_title = "Latest from Bowen Craggs & Co"
    @page_lead = "Our database allows you to view the performance of your company's website, as measured by the 
            Financial Times Bowen Craggs Index of corporate website effectiveness. You can choose up to 10 peer 
            companies to compare against, see charts and reports for all companies, identify best practice, and 
            view your own site's progress."

    @companies = Admin::Company.paginate :page => params[:page],
                :limit => 3        

    render layout: 'wed/two_column'        
  end


  def score_card
    @page_title = "Score Card"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"

    @metrics = Admin::Metric.order(:number)
    # @my_peers = Admin::Company.find(current_user.user_peer_companies.map(&:company_id))
    # @metrics = @latest_report.report_type.metric_report_types.order(:number)

  end


  def latest_report
    @page_title = "Latest Reports"
    @page_lead = "Explore, download and share your current report whole or in parts; retrieve earlier versions; and check other companies’ reports."

    ## current user's company's latest report
    # check if there is report id params changed, and get report data according to id
    # @latest_report = current_user.company.latest_report
    @company_reports = current_user.company.reports.order('publish_date desc')
    
    unless params[:id].nil?
      @latest_report = @company_reports.find(params[:id])
    else
      @latest_report = @company_reports.first
    end

    
    # @report_type_metrics = @latest_report.report_type.metric_report_types.order(:number)
    # debugger
    @report_metrics = @latest_report.reports_metrics.includes(:metric).order('metrics.number asc')
    # debugger

    # check if there is metric params to search for
    # @current_metric = @metrics.find(params[:metric_id])
    #@first_metric = @metrics.first
    # debugger
  end

  def export_latest_report(format)
    
  end


  def progress_chart
    @page_title = "Progress Chart"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"

    if current_user
      # @company = current_user.company
      @reports = @company.reports if @company.reports.present?

      @report_years = @reports.order(:publish_date).map(&:publish_date)
      
      @yr = @report_years.map {|d| 
        d.strftime "%Y" 
      }


      @reports.each do |report|
        @metrics = report.reports_metrics
      end
      # @metrics = @reports.first.reports_metrics
      debugger
    end

  end


  def peer_comparison
    @page_title = "Peer Comparison"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"

    @metrics = Admin::Metric.order(:number)
    # @my_peers = @my_peers.all(:condition => '')
    # debugger
  end


  def best_practice
    @page_title = "Best Practice"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"

    # top 10 companies order by each metrics scores
    @metrics = Admin::Metric.roots.order(:number)
    @companies = Admin::Company.order(:name).limit(10)

    
    
    
  end


  def results_table
    @page_title = "Results Table"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"
    @companies = @companies.limit(10)
    @company_types = Admin::CompanyType.all
    @company_sectors = Admin::Sector.all
    @company_regions = Admin::Region.all
    @company_countries = Admin::Country.all

  end

  def consultancy
    @page_title = "Consultancy"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"

    render layout: 'wed/two_column'        
  end


  def wen
    @page_title = "Web Effectiveness Network (WEN)"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"

    render layout: 'wed/two_column'        
  end


  def company_profile
    @page_title = "Company Profile"
    @page_lead = ""

    @company = Admin::Company.find(params[:id])
    @reports = @company.reports if @company.reports.present?
    @latest_report = @company.reports.order(:created_at).last
    # @report_type_metrics = @latest_report.report_type.metric_report_types.order(:number)
    @report_metrics = @latest_report.reports_metrics.includes(:metric).order('metrics.number asc')
    # debugger
    # @first_metric = @metrics.first
    unless @reports.nil?
      @report_years = @reports.order(:publish_date).map(&:publish_date).compact
        
      @yr = @report_years.map {|d| 
        d.strftime "%Y" 
      }
    end
  end

  def my_peers
    @page_title = "My Peers"
    @page_lead = "Use the My Peers tab to refine your list of peer companies. You can select up to ten active peers 
          at any one time and these will appear as comparator companies on charts throughout the system.
          If you are your company’s primary super-user your list of peer companies will be used as a suggested first list for 
          any new company users. As a company user, you will inherit your super-user’s list as an initial suggestion, but are 
          free to edit and produce your own list."    

    # temp, TO DO:: get my peer companies
    
  end

  def my_account_update
    if current_user
      debugger
      current_user.firstname = params[:firstname]
      current_user.lastname = params[:lastname]
      current_user.email = params[:email]
      current_user.job_title = params[:job_title]

      # if no password entered , need to skip password field
      if params[:current_password].present?
        if current_user.authenticate(params[:password])
          current_user.password = params[:new_password]
          current_user.confirm_password = params[:confirm_password]
        end  
      end 

      if current_user.save
        format.html { redirect_to my_account_url, notice: 'User Information updated' }
      else
        
        flash.now.alert = "Please Check inputs"
        render "new"

      end
    end
  end

  def my_account
    @page_title = "My Account"
    @page_lead = "Use the My account tab to update your account details, change your password or amend your e-mail preferences."

  end


  def search
    @page_title = "Search"
  end


  def advanced_search
    @page_title = "Advanced Search"
    

    render layout: 'wed/two_column'

  end

  def download_report_pdf
      @report = params[:report_id]
    # debugger
    
  end


  private

  def get_companies
    @companies = Admin::Company.all
  end

  def set_company
    # @companies = Admin::Company.all    
    @my_company = current_user.company
  end

  def get_my_peers
    # TO DO :: GET MY PEERS
    # @my_peers = Admin::Company.find(current_user.user_peer_companies.map(&:company_id))
    @my_peers = current_user.peer_companies
    
  end
end
