class Admin::CompaniesController < Admin::AdminController

  before_action :set_company, only: [:show, :edit, :update, :destroy, :profile, :filter]
  respond_to :html, :js, :json

  def filter
    
  end

  # GET /companies
  # GET /companies.json
  def index
    # @admin_companies = Admin::Company.all
    @admin_companies = Admin::Company.order(:name).paginate :page => params[:page]

    @company_types = Admin::CompanyType.all
    @company_sectors = Admin::Sector.all
    @company_regions = Admin::Region.all
    @company_countries = Admin::Country.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @admin_company = Admin::Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @admin_company = Admin::Company.new(admin_company_params)

    respond_to do |format|
      if @admin_company.save

        # to do
        # @admin_company.save_by(current_user)

        format.html { redirect_to admin_companies_url, notice: 'Company was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_company }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @admin_company.update(admin_company_params)
        format.html { redirect_to admin_companies_url, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @admin_company.destroy
    respond_to do |format|
      format.html { redirect_to admin_companies_url }
      format.json { head :no_content }
    end
  end

  def profile
    # TO DO
    debugger
  end

  def toggle_activate
    # TO DO::activate / deactivate function
  end

  def best_practice_all
      
      # debugger
      @companies = Admin::Company.all # to review
      @metrics = Admin::Metric.roots.order(:number) # to review


      respond_to do |format|
        format.js {
          render :partial => 'best_practice_all' #, :locals => { :retailers => @retailers }
        }
      end
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @admin_company = Admin::Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_company_params
      params.require(:admin_company).permit(:name, :url, :renew_date, :company_type_id, :sector_id, :country_id, :reports_count,
                          :icon_file_name, :logo_file_name, :icon, :logo)
    end
end
