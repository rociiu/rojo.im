class CommentsController < ApplicationController
  
  skip_filter :login_required
  
  def create
    post = Post.find(params[:post_id])
    comment = post.comments.build(params[:comment])
    if current_user
      comment.customer = "Joey Lin"
    end
    if post.save
      redirect_to post_path(post)
    end
  end
  
  def destroy
    post = Post.find(params[:post_id])
    comment = post.comments.find(params[:id])
    if comment.destroy
      redirect_to post_path(post)
    end
  end
end
