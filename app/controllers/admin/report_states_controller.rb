class Admin::ReportStatesController < Admin::AdminController
  before_action :set_admin_report_state, only: [:show, :edit, :update, :destroy]

  # GET /admin/report_states
  # GET /admin/report_states.json
  def index
    @admin_report_states = Admin::ReportState.all
  end

  # GET /admin/report_states/1
  # GET /admin/report_states/1.json
  def show
  end

  # GET /admin/report_states/new
  def new
    @admin_report_state = Admin::ReportState.new
  end

  # GET /admin/report_states/1/edit
  def edit
  end

  # POST /admin/report_states
  # POST /admin/report_states.json
  def create
    @admin_report_state = Admin::ReportState.new(admin_report_state_params)

    respond_to do |format|
      if @admin_report_state.save
        format.html { redirect_to @admin_report_state, notice: 'Report state was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_report_state }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_report_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/report_states/1
  # PATCH/PUT /admin/report_states/1.json
  def update
    respond_to do |format|
      if @admin_report_state.update(admin_report_state_params)
        format.html { redirect_to @admin_report_state, notice: 'Report state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_report_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/report_states/1
  # DELETE /admin/report_states/1.json
  def destroy
    @admin_report_state.destroy
    respond_to do |format|
      format.html { redirect_to admin_report_states_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_report_state
      @admin_report_state = Admin::ReportState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_report_state_params
      params.require(:admin_report_state).permit(:name, :code)
    end
end
