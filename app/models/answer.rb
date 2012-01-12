class Answer < ActiveRecord::Base
  validates :question_id, :presence => true

  belongs_to :user
  belongs_to :question
end
