class Bank < ActiveRecord::Base
	validates :acc_no,:name, :presence => true, :uniqueness => true
	
	def self.create_new_account(bank_detail)
		status=true
		@bank=self.new(:name =>bank_detail.username, :acc_no=>bank_detail.bank_acc_no)
		status=@bank.save
		return status
	end
end
