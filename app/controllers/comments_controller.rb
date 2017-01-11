class CommentsController < ApplicationController

  def create
    @comment = Comment.create comments_params
    redirect_to :back
  end

  private

  def comments_params
    params.require(:comment).permit(:content, :post_id)
  end
end

