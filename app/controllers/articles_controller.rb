class ArticlesController < ApplicationController
  
  load_and_authorize_resource
  before_filter :check_to_publish, :only => [:create, :update]
  
  def index
    if user_signed_in?
      @articles = Article.find(:all, :conditions => ["published = true or user_id = #{current_user.id}"])
    else
      @articles = Article.published
    end
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = current_user.articles.new(params[:article])
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
  
  private
  
  def check_to_publish
     @article.published = false if current_user.is_reporter? and !@article.published
  end  
    
end