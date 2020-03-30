class CommentsController < ApplicationController

	def create
		character = Character.find(params[:character_id])
    	comment = current_user.comments.new(comment_params)
    	comment.character_id = character.id
    	comment.save
    	redirect_to character_path(character)
	end

	def edit
	end

	def update
	end

	def destroy
	end
end

	private
		def post_comment_params
    		params.require(:comment).permit(:comment)
		end