class CharactersController < ApplicationController
	def new
		@character = Character.new
	end

	def create
		@character = Character.new(character_params)
		@character.user_id = current_user.id
		@character.save
		redirect_to character_path_(@character)
	end

	def show
		#@characters = current_user.characters.all
		@character = Character.find(params[:id])
		@user = @character.user
		@comment = Comment.new
	end

	def edit
		@character = Character.find(params[:id])
	end

	def update
		@character = Character.find(params[:id])
		if @character.update
		redirect_to character_path_(@character)
	end

	def index
		#キャラクターを逆順で表示　ページャーにkaminari使用
		@characters = Character.page(params[:page]).reverse_order
	end

	def destroy
	    @character = Character.find(params[:id])
    	@character.destroy
    	redirect_to characters_path
end
	end

end

	private
		def character_params
		end