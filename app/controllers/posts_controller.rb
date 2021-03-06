class PostsController < ApplicationController

  def index
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:content)
    end

end
