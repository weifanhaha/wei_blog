class BlogController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  layout "console", only: [:edit, :new]

  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new blog_params
    @blog.save!
    flash[:success] = "新增成功：#{@blog.title}"
    redirect_to @blog
  rescue StandardError => e
    flash[:error] = "出現錯誤：#{e}"
    redirect_back fallback_location: new_blog_path
  end

  def edit
  end

  def update
    @blog.update_attributes!(blog_params)
    flash[:sucess] = "更新成功: #{@blog.title}"
    redirect_to @blog
  rescue StandardError => e
    flash[:error] = "出現錯誤: #{e}"
    redirect_back fallback_location: edit_blog_path(@blog.id)
  end

  def destroy
    @blog.destroy
    redirect_to root_path
  end

  private

  def find_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit!
  end

end
