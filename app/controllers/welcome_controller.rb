class WelcomeController < ApplicationController
	
	skip_before_filter :authenticate_user!


  def home

  		if signed_in?
		  if current_user.user_type_id == 1

		  	redirect_to super_admins_dashboard_path

		  elsif current_user.user_type_id == 2

		  	redirect_to 'super_admins#dashboard'



		  elsif current_user.user_type_id == 3

		  	redirect_to 'super_admins#dashboard'




		  else

		  	redirect_to 'client#dashboard'



		  end
	end


  end
end
