class CommentsController < ApplicationController

  def create
    if !params[:comment][:user_id].empty?
      user_data = :user_id
    else
      user_data = {:user_attributes => [:username, :email]}
    end
    comment = Comment.create!(comment_params(user_data))
    # byebug
    redirect_to comment.post
  end

  private

  def comment_params(args)
    params.require(:comment).permit(:content, :post_id, args)
  end
end
