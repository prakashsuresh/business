class AdminMainPageController < ApplicationController

	layout "admin_layout"

	def home
		 @list=Login.order("username")

	end

	def new_reg
		@d= Date.today
		@emp_id = Login.last
       	@inc_val = @emp_id.emp_id + 1      
		@gender=Gender.find(:all)
		@employee_detail = Login.new
		@login = params[:employee_detail].blank? ? Login.new : Login.new(params[:employee_detail])
		@nationlities=Nationality.find(:all)
		@region=Region.find(:all)
		@blood_group=BloodGroup.find(:all)
	end
	def save
		@login=Login.new(params[:employee_detail])
		
		bank_status=Bank.create_bank_account(params[:employee_detail])
		if (@login.save && bank_status)
		   redirect_to :controller=>'/admin_main_page', :action => 'new_reg'
		else
		   redirect_to :controller=>'/admin_main_page', :action => 'new_reg'
		end
	end
end
