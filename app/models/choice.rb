class Choice < ActiveRecord::Base
  has_many :answers
  belongs_to :user
  def days_till_answer
    puts self.ttl
  end

  def verdict
    string = self.answers.where( answer: "yes" ).length.to_f / self.answers.length.to_f > 0.5 ? "yes" : "no"
    "The answer is " + string + "! " 
  end
end
