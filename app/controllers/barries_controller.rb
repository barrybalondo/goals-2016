class BarriesController < ApplicationController
	before_action :find_user, only: [:edit, :update, :destroy]
  
	def index
		@barries = Barry.all
	end

	def new
		@barry = Barry.new
	end

	def create
		@barry = Barry.new(user_params)
		if @barry.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @barry.update(user_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def destroy	
		@barry.destroy
		redirect_to root_path
	end

	private

		def user_params
			params.require(:barry).permit(:description)
		end

		def find_user
			@barry = Barry.find(params[:id])
		end

end
