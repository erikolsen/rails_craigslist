class PostsController < ApplicationController
  def index
  end

  def new
    @category = Category.find(params[:category_id])
    # @post = @category.posts.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.create(post_params)
    # @post = Post.create(params[:post])
    redirect_to category_path(@category)
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

end
