class PostsController < ApplicationController
	def index
		@post = Post.all.order('created_at DESC')
	end


	def new 
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		
		if @post.save

		redirect_to @post, notice: "Your new blog post has been miraculously saved!"
		else
			render 'new', notice: "Oh no, your post was NOT saved!"
		end
	end

	def show 
	 	@post = Post.find(params[:id])	
	end

	
	private

		def post_params
			params.require(:post).permit(:title, :body)
		end

		def find_post
			@post = Post.find(params[:id])

end

end