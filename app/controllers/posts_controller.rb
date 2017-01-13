class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    respond_to :js
  end

  def create
    @post = Post.create post_params
    if @post.save
      flash[:success] = "Successfully created new post"
      redirect_to action: :index
    else
      flash[:warning] = "Unable to create new post"
      redirect_to action: :index
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

end
