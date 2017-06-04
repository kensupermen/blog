class Api::V1::CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  
  def new
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create user_id: current_user.id, article_id: @article.id, comment_message: comment_params[:comment_message]
    respond_to do |format|
      if @article.save
        format.html { redirect_to api_v1_article_path(@article) }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { redirect_to api_v1_article_path(@article) }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_comment
    @comment = Comment.find_by_id(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment_message)
  end

end
