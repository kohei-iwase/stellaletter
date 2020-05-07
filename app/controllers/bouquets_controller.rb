class BouquetsController < ApplicationController
	def create
        character = Character.find(params[:character_id])
        bouquet = current_user.bouquets.new(character_id: character.id)
        bouquet.save
        redirect_to character_path(character)
    end
    def destroy
        character = Character.find(params[:character_id])
        bouquet = current_user.bouquets.find_by(character_id: character.id)
        bouquet.destroy
        redirect_to character_path(character)
    end
end
