class PagesController < ApplicationController
  def home
  	@les_articles = Article.page(params[:page]).per(11)
  end

  def show
  	@article = Article.find(params[:id])
  end

  def create
    Comment.create author: params[:author],  content: params[:content], article_id: params[:id]
    redirect_to "/articles/#{params[:id]}"
  end
end
