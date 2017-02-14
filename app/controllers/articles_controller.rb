class ArticlesController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(task_params)
    @article.save
    redirect_to article_path(@article)
  end
  def edit
  end

  def update
    @article.update(task_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def task_params
    params.require(:article).permit(:title, :content)
  end

  def set_task
    @article = Article.find(params[:id])
  end
end
