class FormsController < ApplicationController
	def index
		@form = Form.new
		@form = Form.all.order('created_at DESC')
	end


	def new 
		@form = Form.new
	end

	def create
		@form = Form.new(form_params)
		
		if @form.save

		redirect_to forms_path, notice: "Your form has been submitted!"
		else
			render 'new', notice: "Oh no, your form was NOT send!"
		end
	end

	
	
	private

		def form_params
			params.require(:form).permit(:name, :email, :message)
		end
end
