class HomeController < ApplicationController

 def index
 end

 def about
 end

 def login
 end

 def authenticate
  if params[:a1].casecmp("tripod")==0 && (params[:a2].casecmp("crocodile")==0 || params[:a2].casecmp("croc")==0) && params[:a3].casecmp("DPRK")==0
   session[:loggedin]=true
   flash[:success]="Logged in ! :)"
   redirect_to '/loggedin'
  else
   flash[:danger]="Incorrect"
   redirect_to '/login'
  end
 end

 def logout
  session[:loggedin]=false
  flash[:success]="Logged out"
  redirect_to root_path
 end

 def gallery
 end

 def logged
  if session[:loggedin]==false
    redirect_to root_path
  end
 end

 def tri
  if session[:loggedin]==false
    redirect_to root_path
  end
 end
end
