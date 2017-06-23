class UsersController < ApplicationController

	def dashboard
		
	end

def index
    @users = User.all
  end

  def new
  	@user = User.new
  	
  end
end
