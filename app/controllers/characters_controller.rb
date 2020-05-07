class CharactersController < ApplicationController
	def new
		@character = Character.new
	end

	def create
		@character = Character.new(character_params)
		@character.user_id = current_user.id
		if @character.save
			redirect_to characters_path
		end
	end

	def show
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
	end

	def index
		#キャラクターを逆順で表示　ページャーにkaminari使用
		# @characters = Character.page(params[:page]).reverse_order
		@characters = Character.all.includes(:user)
	end

	def destroy
	    @character = Character.find(params[:id])
    	if @character.destroy
    		redirect_to characters_path
    	end
	end

	def bouquets
		@characters = current_user.bouquets_characters.includes(:user)
	end

	def partners
	    @character = Character.find(params[:id])
		@user = @character.user
	end

	private
		def character_params
	    	params.require(:character).permit(:image, :name, :nickname, :gender, :age, :race, :profile, :pr)
		end

end