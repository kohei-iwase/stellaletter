class PartnershipsController < ApplicationController

  def create
    @character = Character.find(params[:follower_id]) #自分のキャラクター
    @partner = Character.find(params[:followed_id]) #パートナー
    @character.active_partnerships.create(followed_id: @partner.id, follower_id: @character.id)
#    @character.follow(@partner) #キャラクターがパートナーをフォロー
    redirect_to partners_character_path(@character)
    # respond_to do |format|
    #   format.html {redirect_back(fallback_location: @yosonoko)}
    #   format.js
    # end
  end

  def destroy
    @character = Character.find(params[:follower_id]) #自分のキャラクター
    @partner = Character.find(params[:followed_id]) #パートナー
    @character.active_partnerships.find_by(followed_id: @partner.id).destroy
#   redirect_back(fallback_location: @user)
    redirect_to partners_character_path(@character)
    # respond_to do |format|
    #   format.html {redirect_back(fallback_location: @partner)}
    #   format.js
    # end
  end

  def show
  end

  def edit
  end

  def update
    @partner = Character.find(params[:followed_id]) #パートナー
    @partnership = Partnership.find_by(follower_id: @partner.id)
    @partnership.match = true
    @partnership.update(partnership_params)
    redirect_to partners_character_path(@character)
  end

  def create_match　#match = trueにするメソッド
    @character = Character.find(params[:follower_id]) #自分のキャラクター
    @partner = Character.find(params[:followed_id]) #パートナー
    @partnership = @character.active_partnerships.find_by(followed_id: @partner.id)
    @partnership.match = true
    @partnership.update
    redirect_to partners_character_path(@character)
  end

  def destroy_match
    @character = Character.find(params[:follower_id]) #自分のキャラクター
    @partner = Character.find(params[:followed_id]) #パートナー
    @character.active_partnerships.find_by(followed_id: @partner.id).destroy
    redirect_to partners_character_path(@character)
  end

  def reject
    @partnership.destroy
  end

  def index
    @partnerships = Pertnership.where(match: true) #マッチしたものだけ表示
  end


    private

      def set_character
        @character = Character.find(params[:id]) #自分のキャラクター
      end

      def set_partnership
        @partnership = Partnership.find(params[:id])
      end

      def partnership_params
          params.require(:partnership).permit(:message,:match)
      end


end
