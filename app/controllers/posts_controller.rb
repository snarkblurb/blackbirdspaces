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
		@posts = Post.all.order('created_at DESC').paginate(page: params[:page], per_page: 7)
  end

  def show
		@post = Post.find(params[:id])
  end

	private

		def post_params
			params.require(:post).permit(:title, :body)
		end
		
end
