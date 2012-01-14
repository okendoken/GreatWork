class UserController < ApplicationController
  before_filter  :authenticate_user!, :except => 'show'

  #todo Kostya, how to deal with this?
  #I read an answer on stackoverflow and one guy said it's not good to use code from
  #helpers in controllers.
  #http://stackoverflow.com/questions/453762/nomethoderror-when-trying-to-invoke-helper-method-from-rails-controller
  #wtf?
  #following line just inserts code?
  include UserHelper

  def show
    @user = User.find params[:id]
  end

  def edit
    # user is only allowed to edit his own page
    @user = User.find params[:id]
    # redirect him cruelly
    redirect_to @user unless is_current_user_page? @user
  end

  def update
    #todo implement
  end

  def create
    current_user.successful = params[:a] == 'Y'
    current_user.answers.create :answerText => params[:q1], :question_id => 1
    current_user.answers.create :answerText => params[:q2], :question_id => 2
    current_user.answers.create :answerText => params[:q3], :question_id => 3
    current_user.save
    respond_to do |format|
      format.html { redirect_to (current_user)}
      format.xml  { render :xml => 'ok'}
    end
  end

  def new

  end

end
