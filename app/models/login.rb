class Login < ActiveRecord::Base

	validates :username,:email, :presence => true, :uniqueness => true
	belongs_to :gender
	belongs_to :nationality
	belongs_to :blood_group
	belongs_to :region
	#error_messages_for '@employee_detail'
end
