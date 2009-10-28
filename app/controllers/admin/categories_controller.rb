class Admin::CategoriesController < Admin::AdminController
  def new
    @category = Category.new
  end
  
  def index
    @categories = Category.all
  end
  
  def update
    @category = Category.find(params[:id])
    
    if @category.update_attributes(params[:category])
      flash[:notice] = "Success update category."
      redirect_to admin_categories_path
    else
      render
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def create
    @category = Category.new(params[:category])
    
    if @category.save
      flash[:notice] = "Success created category."
      redirect_to admin_categories_path
    else
      render :new
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "Success deleted category."
    redirect_to admin_categories_path
  end

end
