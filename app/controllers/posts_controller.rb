class PostsController < ApplicationController

  before_action :load_post , only: [:show, :edit, :update, :destroy]

  def index
     @post = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @comment = @post.comments.build
  end

  def edit

  end

  def update
    if (@post.update(post_params))
     redirect_to @post
    else
     render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def create
    @post = Post.new(post_params)

    if @post.save
     redirect_to @post
    else
     render 'new'
    end
  end

  private

  def load_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end


