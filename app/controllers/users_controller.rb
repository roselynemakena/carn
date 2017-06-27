class UsersController < ApplicationController

	def dashboard

		@user = User.find(current_user)
		
	end

def index
    @users = User.all
  end

  def new
  	@user = User.new
  	
  end
end
