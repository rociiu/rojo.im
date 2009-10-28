class PostsController < ApplicationController
  
  def index
    @posts = Post.find(:all, :order => "created_at DESC")
  end
  
  def show
    @post = Post.find(params[:id])
    @page_title = @post.title
    @comments = @post.comments
  end

  def comment
    @post = Post.find(params[:id])
    comment = Comment.new(params[:comment])
    if comment.save
    else
    end
    redirect_to post_path(@post)
  end
  
end
