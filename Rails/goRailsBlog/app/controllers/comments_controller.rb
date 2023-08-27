class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

    def index
    end
  
    def new
    end
  
    def create
      @blog_post = BlogPost.find(params[:blog_post_id]) # Use :blog_post_id instead of :id
      @comment = @blog_post.comments.create(comment_params)
      # @comment = @blog_post.comments.build(comment_params)
      @comment.user = current_user
      
      if @comment.save
         redirect_to @blog_post
      else
         # You can handle the error here, like rendering the blog post's show view with an error message.
         render 'blog_posts/show'
      end
  
      # redirect_to @blog_post
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:name, :body)
    end
end