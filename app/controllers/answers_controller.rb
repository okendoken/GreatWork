class AnswersController < ApplicationController

  def index
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
    respond_to do |format|
        format.html { render :action => "create" }
        format.xml  { render :xml => 'ok'}
    end
  end
end