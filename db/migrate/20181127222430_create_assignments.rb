class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :details
      t.date :expected_completion_date
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
