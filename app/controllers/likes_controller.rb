class LikesController < ApplicationController

	def create
		@like = Like.new(like_params)
		if @like.save #入力されたデータをdbに保存する。
  			redirect_to likes_path, success: "新しいルルブ/サプリを登録しました！"
	    else
	      @likes = Like.all
	      flash[:danger] = 'ルルブ/サプリの登録に失敗しました。名前の入力欄は空白になっていませんか？'
	      render :index
	    end
    end

	def index
		@user = current_user
		@like = Like.new
		@likes = Like.all
		@status = @user.user_status.build #モデルなのでbuildを使用
		@systems = @user.systems.order(created_at: :desc).page(params[:page]).per(4)
	end


    private
    def like_params
	  	params.require(:like).permit(:name,:image)
    end


end
