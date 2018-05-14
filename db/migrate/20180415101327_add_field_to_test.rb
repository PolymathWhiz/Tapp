class AddFieldToTest < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :question, :text
    add_reference :tests, :user, foreign_key: true
  end
end
