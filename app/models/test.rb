class Test < ActiveRecord::Base

  has_many :questions, through: :test_questions
  has_many :test_reponses

  # validation
  validates :name, :presence => true
  validates :timeout, :presence => true, :if => :set_timeout?

  def set_timeout
    self.is_timed ? true : false
  end
end