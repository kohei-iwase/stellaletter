class LikesAndDislikesController < ApplicationController

	def create
		@like = LikeAndDislike.new(like_params)
		if @like.save #入力されたデータをdbに保存する。
  			redirect_to likes_and_dislikes_path, success: "新しいルルブ/サプリを登録しました！"
	    else
	      @likes = LikeAndDislike.all
	      flash[:danger] = 'ルルブ/サプリの登録に失敗しました。名前の入力欄は空白になっていませんか？'
	      render :index
	    end
    end

	def index
		@like = LikeAndDislike.new
		@likes = LikeAndDislike.all
		@status = current_user.user_status.build #モデルなのでbuildを使用
	end


    private
    def like_params
	  	params.require(:like_and_dislike).permit(:name,:image)
    end


end
