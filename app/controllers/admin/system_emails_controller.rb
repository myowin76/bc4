class Admin::SystemEmailsController < Admin::AdminController
  before_action :set_admin_system_email, only: [:show, :edit, :update, :destroy]

  # GET /admin/system_emails
  # GET /admin/system_emails.json
  def index
    @admin_system_emails = Admin::SystemEmail.all
  end

  # GET /admin/system_emails/1
  # GET /admin/system_emails/1.json
  def show
  end

  # GET /admin/system_emails/new
  def new
    @admin_system_email = Admin::SystemEmail.new
  end

  # GET /admin/system_emails/1/edit
  def edit
  end

  # POST /admin/system_emails
  # POST /admin/system_emails.json
  def create
    @admin_system_email = Admin::SystemEmail.new(admin_system_email_params)

    respond_to do |format|
      if @admin_system_email.save
        format.html { redirect_to @admin_system_email, notice: 'System email was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_system_email }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_system_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/system_emails/1
  # PATCH/PUT /admin/system_emails/1.json
  def update
    respond_to do |format|
      if @admin_system_email.update(admin_system_email_params)
        format.html { redirect_to @admin_system_email, notice: 'System email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_system_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/system_emails/1
  # DELETE /admin/system_emails/1.json
  def destroy
    @admin_system_email.destroy
    respond_to do |format|
      format.html { redirect_to admin_system_emails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_system_email
      @admin_system_email = Admin::SystemEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_system_email_params
      params.require(:admin_system_email).permit(:name, :from, :subject, :body)
    end
end
