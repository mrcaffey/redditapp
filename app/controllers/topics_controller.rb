class TopicsController < ApplicationController
  before_action :set_sub
  before_action :set_topic, except: [:index, :new, :create]


  #----INDEX----#
  def index
    @topics = @sub.topics
  end

  #----SHOW----#
  def show
  end

  #----NEW----#
  def new
    @topic = @sub.topics.new
    render partial "form"
  end

  #----EDIT----#
  def edit
  end

  #----CREATE----#
  def create
    @topic = @sub.topics.new(topic_params)

    if @topic.save
      redirect_to sub_topic_path(@sub, @topic)
    else

    end
  end

  #----UPDATE----#

  def update
  end

  def destroy
  end

  private
    def set_sub
      @sub = Sub.find(params[:sub_id])
    end

    def set_topic
      @topic = Topic.find(params[:id])
  end
end
