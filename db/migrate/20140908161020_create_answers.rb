class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :choice
      t.string :answer
    end
  end
end
