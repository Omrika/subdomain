class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @posts = @blog.posts
  end



  def create
    @blog = Blog.create(blog_params)
  end
end
private

def blog_params
  params.require(:blog).permit(:name, :subdomain)
end
