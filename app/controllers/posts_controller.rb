class PostsController < ApplicationController
  def show
    @post = @blog.posts.find(params[:id])
  end

  def new
    @post = Post.new
    redirect_to "/blogs/show"
  end

  def create
    @post = Post.create(post_params)
  end
end

private

def post_params
  params.require(@post).permit(:title, :body)
end
