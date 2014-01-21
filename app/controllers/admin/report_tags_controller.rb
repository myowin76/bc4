class Admin::ReportTagsController < Admin::AdminController
  before_action :set_admin_report_tag, only: [:show, :edit, :update, :destroy]

  # GET /admin/report_tags
  # GET /admin/report_tags.json
  def index
    @admin_report_tags = Admin::ReportTag.all
  end

  # GET /admin/report_tags/1
  # GET /admin/report_tags/1.json
  def show
  end

  # GET /admin/report_tags/new
  def new
    @admin_report_tag = Admin::ReportTag.new
  end

  # GET /admin/report_tags/1/edit
  def edit
  end

  # POST /admin/report_tags
  # POST /admin/report_tags.json
  def create
    @admin_report_tag = Admin::ReportTag.new(admin_report_tag_params)

    respond_to do |format|
      if @admin_report_tag.save
        format.html { redirect_to @admin_report_tag, notice: 'Report tag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_report_tag }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_report_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/report_tags/1
  # PATCH/PUT /admin/report_tags/1.json
  def update
    respond_to do |format|
      if @admin_report_tag.update(admin_report_tag_params)
        format.html { redirect_to @admin_report_tag, notice: 'Report tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_report_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/report_tags/1
  # DELETE /admin/report_tags/1.json
  def destroy
    @admin_report_tag.destroy
    respond_to do |format|
      format.html { redirect_to admin_report_tags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_report_tag
      @admin_report_tag = Admin::ReportTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_report_tag_params
      params.require(:admin_report_tag).permit(:name)
    end
end
