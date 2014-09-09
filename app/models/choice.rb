class Choice < ActiveRecord::Base
  has_many :answers
  belongs_to :user
  def days_till_answer
    puts self.ttl
  end
end
