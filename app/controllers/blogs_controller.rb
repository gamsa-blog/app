class BlogsController < ApplicationController
  def show
    blog_id = params.require(:id)

    @blog = Blog.find(blog_id)
  end
end
