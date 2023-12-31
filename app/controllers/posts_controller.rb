class PostsController < ApplicationController
  def new 
    @post = Post.new
  end

  def create
    if @post = Post.create(post_params)
      redirect_to root_path, notice: "Post was created successfully!"
    else
      render :new
    end
  end

  private


  def post_params
    params.require(:post).permit(:caption, :image)
  end
end