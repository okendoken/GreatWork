class AnswersController < ApplicationController

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
    #answer = Answer.new
    #answer.questionId=1
    #answer.answerText=params[:q1]
    #current_user.answers.create answer
    #create new user here. set questions and answers
    respond_to do |format|
        format.html { render :action => "create" }
        format.xml  { render :xml => 'ok'}
    end
  end
end