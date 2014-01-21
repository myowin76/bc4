class Admin::BctipsController < Admin::AdminController
  before_action :set_admin_bctip, only: [:show, :edit, :update, :destroy]

  layout "layouts/admin/cms_desk", only:[:new, :edit]
  # GET /admin/bctips
  # GET /admin/bctips.json
  def index
    @admin_bctips = Admin::Bctip.all
  end

  # GET /admin/bctips/1
  # GET /admin/bctips/1.json
  def show
  end

  # GET /admin/bctips/new
  def new
    @admin_bctip = Admin::Bctip.new
  end

  # GET /admin/bctips/1/edit
  def edit
  end

  # POST /admin/bctips
  # POST /admin/bctips.json
  def create
    @admin_bctip = Admin::Bctip.new(admin_bctip_params)

    respond_to do |format|
      if @admin_bctip.save
        format.html { redirect_to @admin_bctip, notice: 'Bctip was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_bctip }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_bctip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/bctips/1
  # PATCH/PUT /admin/bctips/1.json
  def update
    respond_to do |format|
      if @admin_bctip.update(admin_bctip_params)
        format.html { redirect_to @admin_bctip, notice: 'Bctip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_bctip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/bctips/1
  # DELETE /admin/bctips/1.json
  def destroy
    @admin_bctip.destroy
    respond_to do |format|
      format.html { redirect_to admin_bctips_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_bctip
      @admin_bctip = Admin::Bctip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_bctip_params
      params.require(:admin_bctip).permit(:title, :intro, :body, :showon_admin_dashboard, :showon_wed_dashboard, :publish_from, :publish_to)
    end
end
