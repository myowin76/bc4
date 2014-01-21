class Admin::CommentariesController < Admin::AdminController
  before_action :set_admin_commentary, only: [:show, :edit, :update, :destroy]

  layout "layouts/admin/cms_desk", only:[:new, :edit]

  # GET /admin/commentaries
  # GET /admin/commentaries.json
  def index
    @admin_commentaries = Admin::Commentary.all
  end

  # GET /admin/commentaries/1
  # GET /admin/commentaries/1.json
  def show
  end

  # GET /admin/commentaries/new
  def new
    @admin_commentary = Admin::Commentary.new
  end

  # GET /admin/commentaries/1/edit
  def edit

    # render layout:  "layouts/admin/cms_desk"
  end

  # POST /admin/commentaries
  # POST /admin/commentaries.json
  def create
    @admin_commentary = Admin::Commentary.new(admin_commentary_params)

    respond_to do |format|
      if @admin_commentary.save
        format.html { redirect_to @admin_commentary, notice: 'Commentary was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_commentary }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/commentaries/1
  # PATCH/PUT /admin/commentaries/1.json
  def update
    respond_to do |format|
      if @admin_commentary.update(admin_commentary_params)
        format.html { redirect_to @admin_commentary, notice: 'Commentary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/commentaries/1
  # DELETE /admin/commentaries/1.json
  def destroy
    @admin_commentary.destroy
    respond_to do |format|
      format.html { redirect_to admin_commentaries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_commentary
      @admin_commentary = Admin::Commentary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_commentary_params
      params.require(:admin_commentary).permit(:references, :title, :intro, :body, :showon_admin_dashboard, :showon_wed_dashboard, :publish_from, :publish_to)
    end
end
