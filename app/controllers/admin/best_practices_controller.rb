class Admin::BestPracticesController < Admin::AdminController
  before_action :set_best_practice, only: [:show, :edit, :update, :destroy]

  # GET /best_practices
  # GET /best_practices.json
  def index
    @best_practices = Admin::BestPractice.all
  end

  # GET /best_practices/1
  # GET /best_practices/1.json
  def show
  end

  # GET /best_practices/new
  def new
    @best_practice = Admin::BestPractice.new
    @screengrabs = @best_practice.screengrabs.build
  end

  # GET /best_practices/1/edit
  def edit
    @screengrabs = @best_practice.screengrabs
  end

  # POST /best_practices
  # POST /best_practices.json
  def create
    @best_practice = Admin::BestPractice.new(best_practice_params)

    respond_to do |format|
      if @best_practice.save
        format.html { redirect_to @best_practice, notice: 'Best practice was successfully created.' }
        format.json { render action: 'show', status: :created, location: @best_practice }
      else
        format.html { render action: 'new' }
        format.json { render json: @best_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /best_practices/1
  # PATCH/PUT /best_practices/1.json
  def update
    respond_to do |format|
      debugger
      if @best_practice.update(best_practice_params)
        format.html { redirect_to @best_practice, notice: 'Best practice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @best_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /best_practices/1
  # DELETE /best_practices/1.json
  def destroy
    @best_practice.destroy
    respond_to do |format|
      format.html { redirect_to best_practices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_best_practice
      @best_practice = Admin::BestPractice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def best_practice_params
      params.require(:admin_best_practice).permit(:name, :body, :company_id,
        screengrabs_attributes: [:image, :id, :caption, :screengrab])
    end

end
