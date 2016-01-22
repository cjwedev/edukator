class Question < ActiveRecord::Base

  belongs_to :test_question
  has_many :answers
  has_many :test_reponses, dependent: :destroy

  # validation
  validates :si_no, :subject, :topic, :question_type, :difficulty, :question, :presence => true

  # attachment
  has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end