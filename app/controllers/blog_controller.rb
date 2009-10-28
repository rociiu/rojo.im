class BlogController < ApplicationController
  skip_filter :login_required
  
  def index
    @posts = Post.find(:all, :order => "created_at DESC")
  end
  
end
