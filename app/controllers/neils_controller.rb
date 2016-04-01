class NeilsController < ApplicationController
	before_action :find_user, only: [:edit, :update, :destroy]
  
	def index
		@neils = Neil.all
	end

	def new
		@neil = Neil.new
	end

	def create
		@neil = Neil.new(user_params)
		if @neil.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @neil.update(user_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def show
	end

	def destroy	
		@neil.destroy
		redirect_to root_path
	end

	private

		def user_params
			params.require(:neil).permit(:description)
		end

		def find_user
			@neil = Neil.find(params[:id])
		end

end
