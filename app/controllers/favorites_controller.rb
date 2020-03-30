class FavoritesController < ApplicationController
	def create
        character = Character.find(params[:character_id])
        favorite = current_user.favorites.new(character_id: character.id)
        favorite.save
        redirect_to charcter_path(character)
    end
    def destroy
        post_image = Character.find(params[:character_id])
        favorite = current_user.favorites.find_by(character_id: character.id)
        favorite.destroy
        redirect_to charcter_path(character)
    end
end
