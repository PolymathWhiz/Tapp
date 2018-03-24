class AddCoreFieldsToLesson < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :title, :string
    add_column :lessons, :category, :string
    add_column :lessons, :url, :text
    add_reference :lessons, :user, foreign_key: true
  end
end
