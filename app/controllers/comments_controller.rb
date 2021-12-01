class CommentsController < ApplicationController
  before_action :set_topic
  
  
  def index
    @comments = @topic.comments
    render component: 'Comments', props: {topic: @topic, comments: @comments}
  end

  def show
    @comment = @topic.comments.find(params[:id])
    render component: 'Comment', props: { topic: @topic, comment: @comment}
  end

  def new
  end

  def edit
  end

  
  private
  def set_topic
    @topic = Topic.find(params[:topic_id])
  end
end

