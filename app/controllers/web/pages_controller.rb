class Web::PagesController < Web::WebController
  before_action :set_web_page, only: [:show, :edit, :update, :destroy]

  layout "layouts/admin/cms_desk", only:[:index, :new, :edit]
  # GET /web/pages
  # GET /web/pages.json
  def index
    @web_pages = Web::Page.order(:position)
    
  end

  # GET /web/pages/1
  # GET /web/pages/1.json
  def show

# debugger
    if @web_page.url == "/"
      render layout: "home"
    end
  end

  # GET /web/pages/new
  def new
    @web_page = Web::Page.new
  end

  # GET /web/pages/1/edit
  def edit
  end

  # POST /web/pages
  # POST /web/pages.json
  def create
    @web_page = Web::Page.new(web_page_params)

    respond_to do |format|
      if @web_page.save
        format.html { redirect_to @web_page, notice: 'Page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web/pages/1
  # PATCH/PUT /web/pages/1.json
  def update
    respond_to do |format|
      if @web_page.update(web_page_params)
        # debugger
        format.html { redirect_to page_path(@web_page), notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web/pages/1
  # DELETE /web/pages/1.json
  def destroy
    @web_page.destroy
    respond_to do |format|
      format.html { redirect_to web_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_page
      
      unless (params[:id].is_a? Integer)
      # debugger  
        @web_page = Web::Page.find_by_url(params[:id].split("/").last)
      else
        @web_page = Web::Page.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_page_params
      params.require(:web_page).permit(:meta_title, :meta_desc, :meta_keyword, :name, :page_title, :page_intro, :url, :body, :parent_id, :position)
    end
end
