class UsersController < ApplicationController

	def show
		#@characters = current_user.characters.all
		@user = User.find(params[:id])
	end

	def edit
	end

	def update
	end

	def index
		@users = User.all
	end

end
