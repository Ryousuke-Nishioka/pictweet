class CommentsController < ApplicationController
  def create
    comment = Comment.create(text: comment_paramas[:text], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
    redirect_to "/tweets/#{comment.tweet.id}"
  end

  private
  def comment_paramas
    params.permit(:text, :tweet_id)
  end
end
