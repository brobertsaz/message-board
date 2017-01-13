class CommentsController < ApplicationController

  def create
    @comment = Comment.create comments_params
    if @comment.save
      flash[:success] = "Successfully created new comment"
    else
      flash[:warning] = "Unable to create new comment"
    end
    redirect_to :back
  end

  private

  def comments_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end

