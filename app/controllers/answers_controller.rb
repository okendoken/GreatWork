class AnswersController < ApplicationController

  before_filter :authenticate_user!

  def index
    @answers = Answer.all
    @questions = Question.all
    @saved = false
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
  end

  def create
    @saved = true
    current_user.successful = params[:a] == 'yes'
    current_user.answers.create :answerText => params[:q1], :question_id => 1
    current_user.answers.create :answerText => params[:q2], :question_id => 2
    current_user.answers.create :answerText => params[:q3], :question_id => 3
    current_user.save
    respond_to do |format|
        format.html { redirect_to (current_user)}
        format.xml  { render :xml => 'ok'}
    end
  end
end