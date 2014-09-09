class Answer < ActiveRecord::Base
  belongs_to :choice
  validates :answer, presence: true
end