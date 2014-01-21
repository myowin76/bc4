class Admin::CompanyTypesController < Admin::AdminController
  before_action :set_admin_company_type, only: [:show, :edit, :update, :destroy]

  # GET /admin/company_types
  # GET /admin/company_types.json
  def index
    @admin_company_types = Admin::CompanyType.all
  end

  # GET /admin/company_types/1
  # GET /admin/company_types/1.json
  def show
  end

  # GET /admin/company_types/new
  def new
    @admin_company_type = Admin::CompanyType.new
  end

  # GET /admin/company_types/1/edit
  def edit
  end

  # POST /admin/company_types
  # POST /admin/company_types.json
  def create
    @admin_company_type = Admin::CompanyType.new(admin_company_type_params)

    respond_to do |format|
      if @admin_company_type.save
        format.html { redirect_to @admin_company_type, notice: 'Company type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_company_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_company_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/company_types/1
  # PATCH/PUT /admin/company_types/1.json
  def update
    respond_to do |format|
      if @admin_company_type.update(admin_company_type_params)
        format.html { redirect_to @admin_company_type, notice: 'Company type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_company_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/company_types/1
  # DELETE /admin/company_types/1.json
  def destroy
    @admin_company_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_company_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_company_type
      @admin_company_type = Admin::CompanyType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_company_type_params
      params[:admin_company_type]
    end
end
