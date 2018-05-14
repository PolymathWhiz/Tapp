class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.references :test, foreign_key: true
      t.string :option
      t.string :value

      t.timestamps
    end
  end
end
