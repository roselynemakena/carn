class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :user_type

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    def self.is_admin?(user_id)
		if  User.where(id: user_id, user_type_id: 1).first then return true
		 else return false
		end
	end


	def self.is_restaurant_admin?(user_id)
		if  User.where(id: user_id, user_type_id: 2).first then return true
		 else return false
		end

	end

	def self.is_restaurant_user?(user_id)
		if  User.where(id: user_id, user_type_id: 3).first then return true
		 else return false
		end
	end


	def self.is_client?(user_id)
		if  User.where(id: user_id, user_type_id: 4).first then return true
		 else return false
		end
	end
	
			
end
