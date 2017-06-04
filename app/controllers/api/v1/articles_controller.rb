class Api::V1::ArticlesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index, :get_all_articles, :search]

  def new
    @article = Article.new
    @comment = Comment.new(article_id: params[:article_id])
  end

  def show
    @article = Article.find_by_id(params[:id]) || not_found
    @comments = @article.comments.order(created_at: :desc)
    @comment = Comment.new
  end

  def index
    @articles = Article.all.order(created_at: :desc)
    respond_to do |format|
      format.html
      format.json { render json: @articles }
    end
  end

  def search
    @articles = Article.where('title like ?', '%' + params[:search] + '%')
    respond_to do |format|
      format.html
      format.json { render json: @articles }
    end
  end

  def create
    @article = Article.create article_params
    respond_to do |format|
      if @article.save
        format.html { redirect_to api_v1_articles_path }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
