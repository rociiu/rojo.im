class Admin::PostsController < Admin::AdminController

  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    
    if @post.save
      flash[:notice] = "Success created post."
      redirect_to admin_post_path(@post)
    else
      render :new
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(params[:post])
      flash[:notice] = "Success update post."
      redirect_to admin_post_path(@post)
    else
      render :edit
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Success deleted post."
    redirect_to admin_posts_path
  end
  
  
end
