class Bank < ActiveRecord::Base

	def self.create_bank_account(params)

		bank_account=Bank.new(:acc_no =>params[:bank_acc_no],:name=>params[:username],:balance=>0.0)
		bank_status=bank_account.save
		#return bank_status

	end
end
