class AncosController < ApplicationController
	before_action :find_user, only: [:edit, :update, :destroy]
  
	def index
		@ancos = Anco.all
	end

	def new
		@anco = Anco.new
	end

	def create
		@anco = Anco.new(user_params)
		if @anco.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @anco.update(user_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def show
	end

	def destroy	
		@anco.destroy
		redirect_to root_path
	end

	private

		def user_params
			params.require(:anco).permit(:description)
		end

		def find_user
			@anco = Anco.find(params[:id])
		end

end
