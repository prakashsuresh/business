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
            @login_check=Login.where(:username => params[:user_name_field] , :password => params[:password_field]).first
            if !@login_check.blank?
            redirect_to :controller=>'/main_page', :action => 'show',:user_id=>@login_check
            else
            redirect_to(root_url,:notice => 'Please Enter Valid User Name/Password')
            end
       elsif params[:login][:usertype] =="admin"
            @login_check=Login.where(:username => params[:user_name_field] , :password => params[:password_field],:employee_type=>"HR").first
            if !@login_check.blank?
            redirect_to :controller=>'/admin_main_page', :action => 'new_reg',:user_id=>@login_check
            else
            redirect_to(root_url,:notice => 'Please Enter Valid User Name/Password')
            end
         
       end

    	#raise params.inspect
    end

    def get_password
        @login = Login.new
        render :layout => false
    end


    def forgot_password
       @email =  Login.where('email =?',params[:login][:email]).first
       if @email
         redirect_to(get_password_url,:notice => 'Your password has been sent to your mail')
        else
        raise params.inspect
       end
    end


  

end
