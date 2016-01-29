class LoginController < ApplicationController
  
  def login
    end
    
    def registration
    end
    
    
  def logi
      medicines = Medicines.find_by_user_name_and_password(params[:medicines][:user_name],params[:medicines][:password])
        if !medicines.blank?
          redirect_to :controller => 'home' ,:action => 'index'
        else
          render :action => 'login'
        end
    end
    
    def create
      @medicines=Medicines.new(params[:medical])
        if @medicines.save
          redirect_to :action => "login"
        else
          render :action => "registration"
        end
    end
end
