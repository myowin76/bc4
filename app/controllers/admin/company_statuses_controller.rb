class Admin::CompanyStatusesController < Admin::AdminController
  before_action :set_admin_company_status, only: [:show, :edit, :update, :destroy]

  # GET /admin/company_statuses
  # GET /admin/company_statuses.json
  def index
    @admin_company_statuses = Admin::CompanyStatus.all
  end

  # GET /admin/company_statuses/1
  # GET /admin/company_statuses/1.json
  def show
  end

  # GET /admin/company_statuses/new
  def new
    @admin_company_status = Admin::CompanyStatus.new
  end

  # GET /admin/company_statuses/1/edit
  def edit
  end

  # POST /admin/company_statuses
  # POST /admin/company_statuses.json
  def create
    @admin_company_status = Admin::CompanyStatus.new(admin_company_status_params)

    respond_to do |format|
      if @admin_company_status.save
        format.html { redirect_to @admin_company_status, notice: 'Company status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_company_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_company_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/company_statuses/1
  # PATCH/PUT /admin/company_statuses/1.json
  def update
    respond_to do |format|
      if @admin_company_status.update(admin_company_status_params)
        format.html { redirect_to @admin_company_status, notice: 'Company status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_company_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/company_statuses/1
  # DELETE /admin/company_statuses/1.json
  def destroy
    @admin_company_status.destroy
    respond_to do |format|
      format.html { redirect_to admin_company_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_company_status
      @admin_company_status = Admin::CompanyStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_company_status_params
      params.require(:admin_company_status).permit(:name)
    end
end
