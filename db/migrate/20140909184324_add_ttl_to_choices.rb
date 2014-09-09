class AddTtlToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :ttl, :string
  end
end
