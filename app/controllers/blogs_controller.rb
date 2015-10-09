class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
    # @posts = @blog.posts
  end

  def create
    @blog = Blog.create(blog_params)
    redirect_to "/posts/new"
  end
end
private

def blog_params
  params.require(:blog).permit(:name, :subdomain)
end
