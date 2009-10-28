class Admin::AdminController < ApplicationController

  layout 'admin'
  before_filter :login_needed, :except => [:login]
  
  def index
    
  end
  
  def login
    if request.post?
      user = User.authenticate(params[:login], params[:password])
      if user
        self.current_user = user
        flash[:notice] = "Success login."
        redirect_to '/admin/posts'
      else
        flash[:error] = "Login failed."
        return
      end
    end
  end
  
  def logout
    self.current_user = nil
    redirect_to '/admin/login'
  end
  
  protected
  
    def login_needed
      if current_user.nil?
        flash[:notice] = "You have to login."
        redirect_to '/admin/login'
      end
    end
end
