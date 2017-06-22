class UsersController < ApplicationController

	def dashboard
		
	end

def index
    @users = User.all
  end
end
