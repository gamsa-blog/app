class PostsController < ApplicationController
  def show
    post_id = params.require(:id)

    @post = Post.find(post_id)
  end

  def new
  end

  def create
    title, content = params.require([:title, :content])

    Post.create({
      title: title,
      content: content,
    })
  end

  def index
    @posts = Post.all
  end
end
