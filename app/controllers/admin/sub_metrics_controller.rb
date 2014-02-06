class Admin::SubMetricsController < ApplicationController
  before_action :set_admin_sub_metric, only: [:show, :edit, :update, :destroy]

  # GET /admin/sub_metrics
  # GET /admin/sub_metrics.json
  def index
    @admin_sub_metrics = Admin::SubMetric.all
  end

  # GET /admin/sub_metrics/1
  # GET /admin/sub_metrics/1.json
  def show
  end

  # GET /admin/sub_metrics/new
  def new
    @admin_sub_metric = Admin::SubMetric.new
  end

  # GET /admin/sub_metrics/1/edit
  def edit
  end

  # POST /admin/sub_metrics
  # POST /admin/sub_metrics.json
  def create
    @admin_sub_metric = Admin::SubMetric.new(admin_sub_metric_params)

    respond_to do |format|
      if @admin_sub_metric.save
        format.html { redirect_to @admin_sub_metric, notice: 'Sub metric was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_sub_metric }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_sub_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/sub_metrics/1
  # PATCH/PUT /admin/sub_metrics/1.json
  def update
    respond_to do |format|
      if @admin_sub_metric.update(admin_sub_metric_params)
        format.html { redirect_to @admin_sub_metric, notice: 'Sub metric was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_sub_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sub_metrics/1
  # DELETE /admin/sub_metrics/1.json
  def destroy
    @admin_sub_metric.destroy
    respond_to do |format|
      format.html { redirect_to admin_sub_metrics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_sub_metric
      @admin_sub_metric = Admin::SubMetric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_sub_metric_params
      params.require(:admin_sub_metric).permit(:name, :number, :metric_id, :max_score)
    end
end
