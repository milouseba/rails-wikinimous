class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id].to_i)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: params[:article][:title], content: params[:article][:content])
    @article.save
    redirect_to article_path(@article[:id])
  end

  def update
    @article = Article.find(params[:id].to_i)
    @article.update(title: params[:article][:title], content: params[:article][:content])
    redirect_to article_path(@article[:id])
  end

  def edit
    @article = Article.find(params[:id].to_i)
  end

  def destroy
    @article = Article.find(params[:id].to_i)
    @article.delete
    redirect_to articles_path
  end
end
