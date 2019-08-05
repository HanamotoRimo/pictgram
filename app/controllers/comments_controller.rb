class CommentsController < ApplicationController
  
  def index
    @comment_topics = current_user.comment_topics
  end
  
  def create
    comment = Comment.new
    comment.user_id = current_user.id
    comment.topic_id = params[:topic_id]
    
    comment.save
    
  end
  
end
