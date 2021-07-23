class ArticlesController < ApplicationController
  before_action :set_article, only: (:show, :edit, :update, :destroy)
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new.create(article_params)
    redirect_to articles_path
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to articles_path(@article)
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def destroy
    @article.destroy
    redirect_to articles_path(@article)
  end

  def set_article
    @articles = Article.find(params[:title])
  end
end
