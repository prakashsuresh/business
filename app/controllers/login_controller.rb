class LoginController < ApplicationController
  layout "login_layout" 
	def login
       
		#raise params.inspect
		end

    def main_menu
        flash[:alert] = 'Please fix mistakes outlined in red'
    	#raise params[:user_name_field].inspect
    end

    def goto_login

       if params[:login][:usertype] =="employee"
            @login_check=Login.where(:username => params[:user_name_field] , :password => params[:password_field],:employee_type=>"employee").first
            if !@login_check.blank?
            redirect_to :controller=>'/main_page', :action => 'show',:user_id=>@login_check
            else
            redirect_to(root_url,:notice => 'Please Enter Valid User Name/Password')
            end
       elsif params[:login][:usertype] =="admin"
            @login_check=Login.where(:username => params[:user_name_field] , :password => params[:password_field],:employee_type=>"hr").first
            if !@login_check.blank?
            redirect_to :controller=>'/admin_main_page', :action => 'home',:user_id=>@login_check
            else
            redirect_to(root_url,:notice => 'Please Enter Valid User Name/Password')
            end
         
       end

    	#raise params.inspect
    end

  

end
