class UsersController < ApplicationController

	before_action :set_user,only: [:show,:update, :destroy, :edit] #ユーザー情報を最初にセット
#	before_action :baria_user,only: [:update, :destroy, :edit] #本人以外のアクセスを防ぐ

	def show
    @characters = @user.characters
    @systems = @user.systems.order(created_at: :desc).page(params[:page]).per(4)
    @likes = @user.likes.order(created_at: :desc).page(params[:page]).per(8)

	end

	def edit
	end

  def update
    redirect_to user_path(current_user) if @user != current_user
    if @user.update(user_params)
    	flash[:success] = 'プロフィールの更新に成功しました！'
      	redirect_to user_path(@user)
    else
      	flash[:danger] = 'プロフィールの更新に失敗しました'
      	redirect_to edit_user_path(@user)
    end
  end

  def index
	  @users = User.all.includes(:characters)
  end


  def following
    @title = 'Following'
    @user = User.find(params[:id])
    @users = @user.following.page(params[:page]).per(10)
    render 'show_follow'
  end

  def followers
    @title = 'Followers'
    @user = User.find(params[:id])
    @users = @user.followers.page(params[:page]).per(10)
    render 'show_follow'
  end

  def timelines
    @characters = current_user.characters.build
    @timelines = current_user.timeline.order(created_at: :desc).page(params[:page]).per(10)
  end

		private
		  def user_params
    		params.require(:user).permit(:name, :image, :password, :introduction, :email)
  		end

  		def set_user
  		  @user = User.find(params[:id])
  		end

  		def baria_user
  		  if @user != current_user
				  redirect_to user_path(current_user)
			   end
		  end


end
