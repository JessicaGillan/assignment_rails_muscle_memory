class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find_by_id(params[:id])
    if @article && @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find_by_id(params[:id])
    if @article && @article.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

    def article_params
      params.require(:article).permit(:title, :body)
    end
end
