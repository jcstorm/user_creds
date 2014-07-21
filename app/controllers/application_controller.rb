class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @user = User.find_by_id(params['id'])
  end
  
  def new
  end
  
  def create
    u = User.new
    u.username = params['User Name']
    u.email = params['Email']
    u.save
    redirect_to "/user_creds/#{u.id}" #ruby string interpolation is required here to access the u.id variable
  end
  
  
end
