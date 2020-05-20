class UserStatusesController < ApplicationController
before_action :set_user_status, only: [:show, :update, :destroy, :edit]
before_action :set_user

	def create
		@system = System.find(params[:system_id])
		@user.follow_system(@system)
		redirect_to systems_path
		# respond_to do |format|
		# 	format.html	{redirect_back(fallback_location: @system)}
		# 	format.js
		# end
	end

	def destroy
		@system = UserStatus.find(params[:id]).system
		@user.unfollow_system(@system)
		redirect_to systems_path
		# respond_to do |format|
		# 	format.html	{redirect_back(fallback_location: @system)}
		# 	format.js
		# end
	end

	def create_likes
		@like = Like.find(params[:like_id])
		@user.follow_like(@like)
		redirect_to likes_path
	end

	def destroy_likes
		@like = Like.find(params[:like_id])
		@user.unfollow_like(@like)
		redirect_to likes_path
	end

	def create_skills
		@skill = UserSkill.find(params[:user_skill_id])
		@user.follow_skill(@skill)
		redirect_to user_skills_path
	end

	def destroy_skills
		@skill = UserSkill.find(params[:user_skill_id])
		@user.unfollow_skill(@skill)
		redirect_to user_skills_path
	end

	def index
		@status = @user.statuses.all
	end

	def update
		if @status.update(user_status_params)
		redirect_to systems_path
	 end
	end

	  private

	  	def set_user
	  		@user = current_user
	  	end

	  	def set_user_status
	  		@status = UserStatus.find(params[:id])
	  	end

		def user_status_params
      		params.require(:user_status).permit(:system_id, :user_id)
    	end

   		def system_params
   			params.require(:system).permit(:title,:id,)
   		end


end
