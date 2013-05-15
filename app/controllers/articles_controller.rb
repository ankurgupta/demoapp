class ArticlesController < ApplicationController
  
  load_and_authorize_resource
  
  def index
    @articles = user_signed_in? ? Article.all : Article.published
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, notice: "Article was successfully created."
    else
      render "new"
    end
  end

  def update
    if @article.update_attributes(params[:article])
      redirect_to @article, notice: "Article was successfully updated."
    else
      render "edit"
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url
  end
  
end