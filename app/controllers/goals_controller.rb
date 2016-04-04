class GoalsController < ApplicationController
	before_action :find_user
	before_action :find_goal, only: [:edit, :update, :destroy]

	def index
		@goals = @user.goals
	end

	def new
		@goal = @user.goals.new
	end

	def create
		@goal = @user.goals.new(set_goal)
		
		if @goal.save
			redirect_to user_path(@user)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @goal.update(set_goal)
			redirect_to user_path(@user)
		else
			render 'edit'
		end

	end

	def destroy
		@goal.destroy

		redirect_to user_path(@user)
	end

	private

		def find_user
			@user = User.find(params[:user_id])
		end

		def find_goal
			@goal = @user.goals.find(params[:id])
		end

		def set_goal
			params[:goal].permit(:description)
		end

end
