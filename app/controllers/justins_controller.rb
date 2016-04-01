class JustinsController < ApplicationController
	before_action :find_user, only: [:edit, :update, :destroy]
  
	def index
		@justins = Justin.all
	end

	def new
		@justin = Justin.new
	end

	def create
		@justin = Justin.new(user_params)
		if @justin.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @justin.update(user_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def show
	end

	def destroy	
		@justin.destroy
		redirect_to root_path
	end

	private

		def user_params
			params.require(:justin).permit(:description)
		end

		def find_user
			@justin = Justin.find(params[:id])
		end

end
