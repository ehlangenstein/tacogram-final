class LikesController < ApplicationController

  def create
    @like = Like.find_by({ "post_id" => params["post_id"], "user_id" => session["user_id"] })
    if @like == nil
      @like = Like.new
      @like["post_id"] = params["post_id"]
      @like["user_id"] = session["user_id"]
      @like.save
    end
    redirect_to "/posts"
  end

  def destroy
    @like = Like.find_by({ "id" => params["id"] })
    @like.destroy
    redirect_to "/posts"
  end

end