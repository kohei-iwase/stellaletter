class SystemsController < ApplicationController
	def create
		@system = System.new(system_params)
		# @n = params[:system][:n]
		# if 		@n.to_i == 1 then
		# 	 	@system.name = params[:system][:name]
		# elsif   @n.to_i == 2 then
		# 	 	@system.name = params[:system][:name]
		# end
		
		# @s = params[:system][:s]
		# if 	@s.to_i == 3 then
		#    	@system.supple = params[:system][:supple]
		# elsif
		# 	@system.supple = "基本ルールブック"
		# end

		if @system.save #入力されたデータをdbに保存する。
  			redirect_to systems_path, success: "新しいルルブ/サプリを登録しました！"#保存された場合の移動先を指定。
	    else
	      @systems = System.all
	      flash[:danger] = 'ルルブ/サプリの登録に失敗しました。名前の入力欄は空白になっていませんか？'
	      render :index
	    end
    end

	def index
		@system = System.new
		@systems = System.all
		@status = current_user.user_status.build #モデルなのでbuildを使用

	end

	def edit
		@system = System.find(params[:id])
	end

	def update
  		@system = System.find(params[:id])
  	  	if @system.update(system_params)
  			redirect_to systems_path, success: "ジャンルの情報が更新されました！"
  	  	else #if文でエラー発生時と正常時のリンク先を枝分かれにしている。
        	flash[:danger] = "ジャンルの情報は更新されませんでした。名前の入力欄は空白になっていませんか？"
  	    	render :edit
  	  	end
    end

    private
    def system_params
	  	params.require(:system).permit(:title,:official,:image,:text)
    end

end
