class PagesController < ApplicationController

	def home
		@user = User.find(1)
		@barry = @user.goals
		@user = User.find(2)
		@anco = @user.goals
		@user = User.find(3)
		@neil = @user.goals
		@user = User.find(4)
		@justin = @user.goals
	end

end
