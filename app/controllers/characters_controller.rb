class CharactersController < ApplicationController
	def new
		@character = Character.new
	end

	def create
		@character = Character.new(character_params)
		@character.user_id = current_user.user_id
		@character.save
		redirect_to characters_path
	end

	def show
		#@characters = current_user.characters.all
		@character = Character.find(params[:id])
		@user = @character.user
		@comment = Comment.new
	end

	def edit
	end

	def update
	end

	def index
		@characters = Character.all
	end

	def destroy
	end

end

	private
		def character_params
		end