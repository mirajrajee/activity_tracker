class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_admin, only:[:new,:create,:edit]
  def new
    @user = User.new
  end
  
  def create
    
  end
  private
  def authenticate_admin
    if user_signed_in? 
     current_user.has_role? :admin
    end
  end
end
