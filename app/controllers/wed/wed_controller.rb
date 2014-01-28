class Wed::WedController < ApplicationController
  layout 'wed/wed'
  respond_to :js, :html, :json
  # respond_to :js, :html, :only => :best_practice 

  # to do : add custom layout 2 columns
  before_action :get_companies, only: [:results_table, :my_peers, :advanced_search]
  before_action :get_my_peers, only: [:dashboard, :company_profile, :score_card, :progress_chart]

  before_action :authorize

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

    @metrics = Admin::Metric.roots.order(:number)
    
  end


  def latest_report
    @page_title = "Latest Reports"
    @page_lead = "Explore, download and share your current report whole or in parts; retrieve earlier versions; and check other companies’ reports."

    ## current user's company's latest report
    # @company_reports = Admin::Report.find_all_by_company(params[:company])
    @latest_report = Admin::Report.last
    # current user's company's all reports
    # @company_reports = Admin::Company.reports
    @company = Admin::Company.first
    @company_reports = @company.reports.order(:created_at)

    @metrics = Admin::Metric.order(:number)
    @first_metric = @metrics.first
    # debugger
  end

  def export_latest_report(format)
    
  end


  def progress_chart
    @page_title = "Progress Chart"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"
  end


  def peer_comparison
    @page_title = "Peer Comparison"
    @page_lead = "Lorem itsum Lorem itsum Lorem itsum Lorem itsum Lorem itsum"
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
    @company_reports = @company.reports
    @latest_report = @company.reports.order(:created_at).last

    
    @metrics = Admin::Metric.order(:number)
    @first_metric = @metrics.first
  end

  def my_peers
    @page_title = "My Peers"
    @page_lead = "Use the My Peers tab to refine your list of peer companies. You can select up to ten active peers 
          at any one time and these will appear as comparator companies on charts throughout the system.
          If you are your company’s primary super-user your list of peer companies will be used as a suggested first list for 
          any new company users. As a company user, you will inherit your super-user’s list as an initial suggestion, but are 
          free to edit and produce your own list."    

    # temp, TO DO:: get my peer companies
    @my_peers = Admin::Company.order(:name).limit(10)
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


  private

  def get_companies
    @companies = Admin::Company.all
  end

  def set_company
    @companies = Admin::Company.all    
  end

  def get_my_peers
    # TO DO :: GET MY PEERS
    @my_peers = Admin::Company.order(:name).limit(10)
  end
end
