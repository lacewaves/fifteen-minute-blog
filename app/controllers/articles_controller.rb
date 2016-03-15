class ArticlesController < ApplicationController
  def index
    @articles = Article.order("created_at desc")

    @article_count = Article.count
  end

  def detail
    @article = Article.find params[:id]
  end
end
