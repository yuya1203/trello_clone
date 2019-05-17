class TopController < ApplicationController
  def index
    @lists = List.where(user: current_user).order("created_at ASC") # user_idがcurrent_userのレコードを取得
  end
end
