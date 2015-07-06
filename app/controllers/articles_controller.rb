class ArticlesController < ApplicationController
  before_action :set_article, :except => [:index,:new, :create] 
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      ArticleMailer.article_info(@article).deliver_now
      flash[:notice] = "article created successfully"
        redirect_to articles_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to articles_path
    else
      render "edit"
    end
  end

  def show
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit!
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
