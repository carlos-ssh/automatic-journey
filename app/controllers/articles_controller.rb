class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments
    @comment = @article.comments.build
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :active, comments: [])
  end
end
