class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :name
      t.references :user
    end
  end
end
