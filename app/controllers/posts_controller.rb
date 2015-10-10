class PostsController < ApplicationController


  def new
    @post = Post.new
  end

  def show
    @post = @blog.posts.find(params[:id])
  end

  def create
    @post = @blog.posts.create(post_params)
    respond_to do |format|
      format.html { render :controller => "blogs", :action => "show"}
      format.json { render json: @resource }
    end
  end

end
private

def post_params
  params.require(:post).permit(:title, :body, :blog_id)
end
