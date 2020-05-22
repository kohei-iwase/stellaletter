class UserSkillsController < ApplicationController
	def create
		@skill = UserSkill.new(skill_params)
		if @skill.save #入力されたデータをdbに保存する。
  			redirect_to user_skills_path, success: "新しいルルブ/サプリを登録しました！"
	    else
	      @skills = UserSkill.all
	      flash[:danger] = 'ルルブ/サプリの登録に失敗しました。名前の入力欄は空白になっていませんか？'
	      render :index
	    end
    end

	def index
		@user = current_user
		@skill = UserSkill.new
		@skills = UserSkill.all
		@status = @user.user_status.build #モデルなのでbuildを使用
		@systems = @user.systems.order(created_at: :desc).page(params[:page]).per(4)
	end

	def show
		@skill = UserSkill.find(params[:id])
	end

    private
    def skill_params
	  	params.require(:user_skill).permit(:name,:image)
    end

end
