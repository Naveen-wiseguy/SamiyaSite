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
   redirect_to root_path, alert: "Logged in ! :)"
  else
   redirect_to '/login', alert: "Incorrect"
  end
 end

 def logout
  session[:loggedin]=false
  redirect_to root_path, alert: "Logged out"
 end
end
