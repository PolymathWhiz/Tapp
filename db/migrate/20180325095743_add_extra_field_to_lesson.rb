class AddExtraFieldToLesson < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :description, :string
  end
end
