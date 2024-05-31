class PostsController < ApplicationController

  def index
    @posts = Post.all

    # alternative responses to requests other than HTML
    # respond_to do |format|
    #   format.html # implicitly renders posts/index.html.erb
    # end
  end

  def new
    @user = User.find_by({ "id" => session["user_id"] })
  end

  def create
    @user = User.find_by({ "id" => session["user_id"] })
    if @user != nil
      @post = Post.new
      @post["body"] = params["body"]
      @post["image"] = params["image"]
      @post.uploaded_image.attach(params["uploaded_image"])
      @post["user_id"] = @user["id"]
      @post.save
    else
      flash["notice"] = "Login first."
    end
    redirect_to "/posts"
  end

  # before_action :allow_cors
  # def allow_cors
  #   response.headers['Access-Control-Allow-Origin'] = '*'
  #   response.headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
  #   response.headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email'
  #   response.headers['Access-Control-Max-Age'] = '1728000'
  # end

end
