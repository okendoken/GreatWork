module ApplicationHelper
  def all_questions
    if @cached_question.nil?
      @cached_question = Question.all
    end
    @cached_question
  end
end
