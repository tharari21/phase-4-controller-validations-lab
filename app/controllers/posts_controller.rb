class PostsController < ApplicationController

  def show
    post = Post.find(params[:id])
    
    render json: post
  end

   def update
    post = Post.find_by!(id: params[:id])
    post.update!(post_params)
    render json: post
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

end
