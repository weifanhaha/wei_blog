class BlogController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit!
  end

end
