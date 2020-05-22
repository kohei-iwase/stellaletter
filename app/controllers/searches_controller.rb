class SearchesController < ApplicationController
  before_action :authenticate_user!, except: [:search]

  def search
    @user = User.new
    @character = Character.new
    @model = params['search']['model']
    @content = params['search']['content']
    @how = params['search']['how']
    @datas = search_for(@how, @model, @content)
  end

  private
	  def partical(model, content)
	    if model == 'user'
	      User.where('name like ?', "%#{content}%").page(params[:page]).per(10)
	    elsif model == 'Character'
	      Charater.where('name like ?', "%#{content}%").page(params[:page]).per(10)
	    elsif model == 'like'
	      Like.where('name like ?', "%#{content}%").page(params[:page]).per(10)
	    else model == 'memory'
	      System.where('title like ?', "%#{content}%").page(params[:page]).per(10)
	    end
	  end

	  def search_for(how, model, content)
	    case how
		    when 'partical'
	     	partical(model, content)
	    end
	  end

end
