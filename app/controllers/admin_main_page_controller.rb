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
		@nationlities=Nationality.find(:all)
		@region=Region.find(:all)
		@blood_group=BloodGroup.find(:all)
	
		
	end

	


	def save		
		a=Login.new(params[:employee_detail])
		a.save!
		redirect_to :controller=>'/admin_main_page', :action => 'new_reg'
	end


	def list_of_emp
		@list_of_emp = Login.find(:all)
	end

	def edit
		@edit= Login.where(:id => params[:id].to_i).first
		@gender=Gender.find(:all)
		@nationlities=Nationality.find(:all)
		@region=Region.find(:all)
		@blood_group=BloodGroup.find(:all)
		

	end
end
