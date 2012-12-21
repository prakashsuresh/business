class Login < ActiveRecord::Base
	validates :username,:email, :presence => true, :uniqueness => true
	belongs_to :gender
	belongs_to :nationality
	belongs_to :blood_group
	belongs_to :region
	belongs_to :salary
	#error_messages_for '@employee_detail'

	has_attached_file :photo,
	 :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
               :url => "/system/:attachment/:id/:style/:filename", 
    :styles => {
      :thumb => "75x75#",
      :small => "100x100#",
      :medium => "400x400>"
    }

    has_attached_file :resume
    
	before_create :create_bank_account
    
     def create_bank_account
      	status=Bank.create_new_account(self) 
     end
end
