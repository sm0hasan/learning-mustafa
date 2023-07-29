class CommentsController < ApplicationController

    def index
    end
  
    def new
    end
  
    def create
      @blog_post = BlogPost.find(params[:blog_post_id]) # Use :blog_post_id instead of :id
      @comment = @blog_post.comments.create(comment_params)
  
      redirect_to @blog_post
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:name, :body)
    end
end