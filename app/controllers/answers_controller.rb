class AnswersController < ApplicationController

  before_filter :authenticate_user!

  def index
    @answers = Answer.all
    @questions = ["What are your talents",
               "What excites you?",
               "What do you read about?"]
    @saved = false
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
  end

  def create
    @saved = true
    answer = Answer.new
    answer.questionId=0
    answer.answerText=params[:q1]
    current_user.answers << answer
    respond_to do |format|
        format.html { redirect_to :controller => 'user', :notice => 'Post was successfully created.'}
        format.xml  { render :xml => 'ok'}
    end
  end
end