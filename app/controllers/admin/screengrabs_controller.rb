class Admin::ScreengrabsController < Admin::AdminController
  before_action :set_screengrab, only: [:show, :edit, :update, :destroy]
  before_filter :load_source
  # GET /screengrabs
  # GET /screengrabs.json
  def index  
    # @screengrabs = Screengrab.all
    @screengrabs = @source.screengrabs
  end

  # GET /screengrabs/1
  # GET /screengrabs/1.json
  def show
  end

  # GET /screengrabs/new
  def new
    # @screengrab = Screengrab.new
    @screengrab = @source.screengrabs.new
    
  end

  # GET /screengrabs/1/edit
  def edit
  end

  # POST /screengrabs
  # POST /screengrabs.json
  def create
    @screengrab = @source.screengrabs.new(screengrab_params)

    respond_to do |format|
      if @screengrab.save
        format.html { redirect_to @source, notice: 'Screengrab was successfully created.' }
        format.json { render action: 'show', status: :created, location: @screengrab }
      else
        format.html { render action: 'new' }
        format.json { render json: @screengrab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screengrabs/1
  # PATCH/PUT /screengrabs/1.json
  def update
    respond_to do |format|
      if @screengrab.update(screengrab_params)
        format.html { redirect_to @screengrab, notice: 'Screengrab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @screengrab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screengrabs/1
  # DELETE /screengrabs/1.json
  def destroy
    @screengrab.destroy
    respond_to do |format|
      format.html { redirect_to screengrabs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screengrab
      @screengrab = Screengrab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screengrab_params
      params.require(:screengrab).permit(:caption, :image)
    end

    def load_source
      resource, id = request.path.split('/')[2,3]
      @source = ("Admin::" + resource.singularize.classify).constantize.find(id)


      # klass = [BestPractice, Admin::Report].detect { |c| params["#{c.name.underscore}_id"]}
      # debugger
      # @source = klass.find(params["#{klass.name.underscore}_id"])

    end
end
