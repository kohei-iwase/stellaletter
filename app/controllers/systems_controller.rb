class SystemsController < ApplicationController
  before_action :set_system,only: [:show,:update, :destroy, :edit]

	def create
		@system = System.new(system_params)
		if @system.save #入力されたデータをdbに保存する。
  			redirect_to systems_path, success: "新しいシステムを登録しました！"
	    else
	      @systems = System.all
	      flash[:danger] = 'システムの登録に失敗しました。名前の入力欄は空白になっていませんか？'
	      render :index
	    end
    end

	def index
		@user = current_user
		@system = System.new
		@systems = System.all
		@status = current_user.user_status.build #モデルなのでbuildを使用

	end

	def edit
	end

	def show
	end

	def update
  	  	if @system.update(system_params)
  			redirect_to systems_path, success: "ジャンルの情報が更新されました！"
  	  	else
        	flash[:danger] = "ジャンルの情報は更新されませんでした。名前の入力欄は空白になっていませんか？"
  	    	render :edit
  	  	end
    end

    private
    def set_system
  		@system = System.find(params[:id])
    end

    def system_params
	  	params.require(:system).permit(:title,:official,:image,:text)
    end

end
