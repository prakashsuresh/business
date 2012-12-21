class Region < ActiveRecord::Base
  attr_accessible :name
  has_many :logins
  
  def Region.ddd
  	nationality =['India','Other']
   region=['Hindu','Muslim','Christian','others']
   bloodgroup=['A','B','AB+','A-','B-','AB-','O+','O-']
   gen=['Male','Female'] 
      for n in gen
     	Gender.create(:name =>n )
      end
  end
end
