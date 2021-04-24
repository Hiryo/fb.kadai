class BlogsController < ApplicationController
  def index
    @blog = Blog.all
  end

  def new

  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
  end

  def confirm
    @blog = current_user.blogs.build(blog_params)
    render :new if @blog.invalid?
  end

  def show
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end
end
