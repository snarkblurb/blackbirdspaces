class PostsController < ApplicationController
  def new
		@post = Post.new
  end

  def create
		@post = Post.create post_params
		redirect_to post_path(@post)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

	private

		def post_params
			params.require(:post).permit(:title, :body)
		end
		
end
