class ApplicationController < ActionController::Base
before_action :authenticate_user! #全てのコントローラーでログイン認証を必要とする
end
