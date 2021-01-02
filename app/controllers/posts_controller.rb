class PostsController < ApplicationController
  def show
    post_id = params.require(:id)

    @post = Post.find(post_id)
  end
end
