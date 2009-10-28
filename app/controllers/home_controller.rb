class HomeController < ApplicationController

  layout 'application'
  
  def index
    
  end
  
  def contact
    @contact = Contact.new
    if request.post?
      @contact = Contact.new(params[:contact])
      if @contact.save
        flash[:notice] = "Thanks."
      end
    end
  end
  
  def portfolio
    
  end
  
  def about
    
  end
  
  def projects
    
  end
  
end
