class BlogPostsController < ApplicationController
   
    before_action :authenticate_user!, except: [:index, :show, :redirect]
    before_action :set_blog_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote] # except: [:index, :create, :new]
    layout "initial", only: [:redirect]
    
    def redirect; end

    # def index 
    #     @blog_posts = user_signed_in? ? BlogPost.sorted : BlogPost.published.sorted
    #     @pagy, @blog_posts = pagy(@blog_posts)
    # rescue Pagy::OverflowError
    #     redirect_to blog_posts_path(page: 1)
    # end

    def index 
        if params[:search]
            @blog_posts = BlogPost.where("title LIKE ?", "%#{params[:search]}%").sorted
        else
            @blog_posts = user_signed_in? ? BlogPost.sorted : BlogPost.published.sorted
        end
        @pagy, @blog_posts = pagy(@blog_posts)
    rescue Pagy::OverflowError
        redirect_to blog_posts_path(page: 1)
    end

    def upvote
        # @blog_post = BlogPost.find(params[:id])
        @blog_post.upvote_by current_user
        redirect_back fallback_location: root_path
    end

    def downvote
        # @blog_post = BlogPost.find(params[:id])
        @blog_post.downvote_by current_user
        redirect_back fallback_location: root_path
    end
    
    # def upvote
    #     @blog_post = BlogPost.find(params[:id])
    #     @blog_post.upvote_from current_user
    # end

    # def downvote
    #     @blog_post = BlogPost.find(params[:id])
    #     @blog_post.downvote_from current_user
    # end

    def show
        # @blog_post = BlogPost.find(params[:id])
    # rescue ActiveRecord::RecordNotFound
    #     redirect_to root_path
        # @display_cover_image = @blog_post.cover_image.present? && action_name != "new"
    end

    def new
        @blog_post = BlogPost.new
    end

    def create 
        @blog_post = current_user.blog_posts.build(blog_post_params)
        if  @blog_post.save
            redirect_to @blog_post
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        # @blog_post = BlogPost.find(params[:id])
    end

    def update
        # @blog_post = BlogPost.find(params[:id])
        if @blog_post.update(blog_post_params)
            redirect_to @blog_post
        else
            render :edit, status: :unprocessable_entity 
        end
    end

    def destroy
        # @blog_post = BlogPost.find(params[:id])
        @blog_post.destroy
        redirect_to blog_posts_path
    end

    private

    def blog_post_params
        params.require(:blog_post).permit(:title, :cover_image, :content, :published_at)
    end

    def set_blog_post
    if user_signed_in?
        @blog_post = BlogPost.find(params[:id])
    else
        @blog_post = BlogPost.published.find(params[:id])
    end
    rescue ActiveRecord::RecordNotFound
        redirect_to blog_posts_path
    end
end