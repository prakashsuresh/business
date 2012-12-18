class SalaryController < ApplicationController
layout "admin_layout"

	def search_employee
	
	end

	def save_salary
		search_employee=Login.find_by_id(params[:salary][:id])
		if search_employee.blank?
		flash[:notice] = "Successfully saved!"
		redirect_to :contoller=>'salary' ,:action=>'search_employee', :notice => "The email is already registered"
		
		end
		#render :layout=>false
	end

end
