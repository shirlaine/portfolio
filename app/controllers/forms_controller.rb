class FormsController < ApplicationController
	def index
	   @forms = Form.all.order('created_at DESC')
	end

	def new
		@form = Form.new
	end

	def create
		@form = Form.new(post_params)
		
		if @form.save

		redirect_to @form, notice: "Your new blog post has been miraculously saved!"
		else
			render 'new', notice: "Oh no, your post was NOT saved!"
		end
	end
end
