class Web::WidgetsController < ApplicationController
  before_action :set_web_widget, only: [:show, :edit, :update, :destroy]

  layout "admin/admin"
  # GET /web/widgets
  # GET /web/widgets.json
  def index
    @web_widgets = Web::Widget.all
  end

  # GET /web/widgets/1
  # GET /web/widgets/1.json
  def show
  end

  # GET /web/widgets/new
  def new
    @web_widget = Web::Widget.new
  end

  # GET /web/widgets/1/edit
  def edit
  end

  # POST /web/widgets
  # POST /web/widgets.json
  def create
    @web_widget = Web::Widget.new(web_widget_params)

    respond_to do |format|
      if @web_widget.save
        format.html { redirect_to @web_widget, notice: 'Widget was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_widget }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web/widgets/1
  # PATCH/PUT /web/widgets/1.json
  def update
    respond_to do |format|
      if @web_widget.update(web_widget_params)
        format.html { redirect_to @web_widget, notice: 'Widget was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web/widgets/1
  # DELETE /web/widgets/1.json
  def destroy
    @web_widget.destroy
    respond_to do |format|
      format.html { redirect_to web_widgets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_widget
      @web_widget = Web::Widget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_widget_params
      params.require(:web_widget).permit(:name, :body)
    end
end
