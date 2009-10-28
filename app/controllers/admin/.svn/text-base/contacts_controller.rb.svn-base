class Admin::ContactsController < Admin::AdminController
  
  def index
    @contacts = Contact.all
  end
  
  def show
    @contact = Contact.find(params[:id])
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.save
      flash[:notice] = "Success created contact."
      redirect_to admin_contact_path(@contact)
    else
      render :new
    end
  end
  
  def edit
    @contact = Contact.find(params[:id])
  end
  
  def update
    @contact = Contact.find(params[:id])
    
    if @contact.update_attributes(params[:contact])
      flash[:notice] = "Success update contact."
      redirect_to admin_contact_path(@contact)
    else
      render
    end
  end
  
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    flash[:notice] = "Success deleted contact."
    redirect_to admin_contacts_path
  end

end
