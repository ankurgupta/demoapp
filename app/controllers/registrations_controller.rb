class RegistrationsController < Devise::RegistrationsController

  before_filter :require_no_authentication, :only => [:cancel]

  def new
    if current_user and !current_user.is_admin?
      flash[:alert] = I18n.t("devise.failure.already_authenticated")
      redirect_to root_path and return
    end
    super
  end
  
  def create
    @user = User.new(params[:user])
    if @user.valid?
      if current_user && current_user.is_admin?
        @user.role = 'editor'
        @user.save
        set_flash_message :notice, :editor_signed_up
        redirect_to root_path
      else
        super
      end
    else
      render 'new'
    end
  end

end