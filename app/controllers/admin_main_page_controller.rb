class AdminMainPageController < ApplicationController

	layout "admin_layout"

	def home
		 @list=Login.order("username")

	end

	def new_reg
        session[:selected_tab] = "home"

		@d= Date.today
		@emp_id = Login.last
       	@inc_val = @emp_id.emp_id + 1      
		@gender=Gender.find(:all)
		@employee_detail = Login.new
		@login =Login.new
		@nationlities=Nationality.find(:all)
		@region=Region.find(:all)
		@blood_group=BloodGroup.find(:all)
	
		
	end

	

	def save
		@login=Login.new(params[:login])
		status=@login.save
		if status
		redirect_to :controller=>'/admin_main_page', :action => 'new_reg'
		else
		@d= Date.today
		@emp_id = Login.last
       	@inc_val = @emp_id.emp_id + 1      
		@gender=Gender.find(:all)
		@nationlities=Nationality.find(:all)
		@region=Region.find(:all)
		@blood_group=BloodGroup.find(:all)		
		render  :action => 'new_reg'
		end

	end


	def list_of_emp
		@list_of_emp = Login.paginate(:page => params[:page],:per_page => 10)
	end

	def edit
		@edit= Login.where(:id => params[:id].to_i).first
		@gender=Gender.all
		@nationlities=Nationality.all
		@region=Region.all
		@blood_group=BloodGroup.all
	end

	def delete
		raise params.inspect
		user=Login.where(:id=>params[:user_id]).first
		
		user.destroy
		redirect_to :action=>'list_of_emp'
	end
end
