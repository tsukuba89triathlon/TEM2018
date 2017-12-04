class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.references :member, foreign_key: true
      t.date :date
      t.float :dist

      t.timestamps
    end
  end
end
