class Admin::ReportsController < Admin::AdminController
  before_action :set_report, only: [:show, :edit, :update, :destroy, :manage_report]

  # respond_to :pdf, :only => :export_pdf


  def manage_report

    # to do:: check the report types to include extra tabs
    # @metrics = Admin::Metric.all    
    @metrics = @report.report_type.metric_report_types.order(:number)
    debugger
  end



  # GET /reports
  # GET /reports.json
  def index
    # debugger
    
    @companies = Admin::Company.order(:name).all
    @report_types = Admin::ReportType.order(:name).all
    @projects = Admin::Project.order(:name).all
    # @reports = Admin::Report.all
  
    if params[:company_id].present?
      @reports = Admin::Report.where("company_id = ?", params[:company_id])
          
    
    elsif params[:project_id].present?
      @reports = Admin::Report.where("project_id = ?", params[:project_id])
          
    
    else
      
    @reports = Admin::Report.order(:created_at)
                
    end            

  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  # GET /reports/new
  def new

    debugger
    # @report = Admin::Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Admin::Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @report }
      else
        format.html { render action: 'new' }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update

    # to do :: check report status

    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to admin_reports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Admin::Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:admin_report).permit(:name, :project_id, :company_id, :publish_from, :publish_to)
    end
end
