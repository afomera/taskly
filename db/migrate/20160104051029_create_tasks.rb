class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :completed_at
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
