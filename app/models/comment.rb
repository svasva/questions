class Comment < ActiveRecord::Base
  belongs_to :question
  validate :validate_parent
  validates_presence_of :question_id

  protected

  def validate_parent
  	errors[:base] << "Cant comment unanswered question" unless self.question.answer
  end
end
