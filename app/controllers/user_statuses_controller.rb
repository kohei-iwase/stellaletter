class UserStatusesController < ApplicationController
before_action :set_user_status, only: [:show, :update, :destroy, :edit]
before_action :set_user
 # 	def create
 # 		@status = UserStatus.new(user_status_params)
 #        @status.user_id = current_user.id
 #        @current_status = UserStatus.find_by(system_id: @status.system_id,user_id: @status.user_id)
 #        if @current_status.nil?
 #            if @status.save
 #                redirect_to systems_path, notice: "性癖が追加されました。"
 #            else
 #                @status = UserStatus.all
 #                render 'index'
 #            end
 #        else
 #            @status.update(user_status_params)
 #            redirect_to systems_path
 #        end
 #    end

 #    def destroy
 #  		@status.destroy
 #  		redirect_to sytems_path, success: "アイテムを削除しました。"
	# end
	def create
        @system = System.find(params[:sysytem_id])
        @status = current_user.user_statuses.new(system_id: system.id)
        @status.save
        redirect_to systems_path
    end
    def destroy
        @system = System.find(params[:system_id])
        @status = current_user.statuses.find_by(system_id: system.id)
        @status.destroy
        redirect_to systems_path
    end

	def index
		@status = @user.statuses.all
	end

	def update
		if @status.update(user_status_params)
		redirect_to systems_path
	 end
	end

	def destroy_all #カート内アイテム全部消去
		@user.statuses.destroy_all
		redirect_to statuses_path, success: "カート空にしました"
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
