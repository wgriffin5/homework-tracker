class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :requirements
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
