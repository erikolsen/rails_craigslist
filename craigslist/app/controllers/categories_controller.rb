class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
    # @posts = Post.where(@category.id = post.category_id)
    # @posts = @posts.categories
  end
end
