class BouquetsController < ApplicationController
	def create
        character = Character.find(params[:character_id])
        bouquets = current_user.bouquets.new(character_id: character.id)
        bouquet.save
        redirect_to charcter_path(character)
    end
    def destroy
        post_image = Character.find(params[:character_id])
        bouquet = current_user.bouquets.find_by(character_id: character.id)
        bouquet.destroy
        redirect_to charcter_path(character)
    end
end
