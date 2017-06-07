class MainController < ApplicationController
	# before_action :current_user
  def index
    @posts = @current_user.posts
  end

  def create
		@current_user.posts.create(post_params)
  	redirect_to root_path
  end

  def new
  	@post = Post.new
  end

  private
  def post_params
  	params.require(:post).permit(:title, :link, :user_id)
  end
end
