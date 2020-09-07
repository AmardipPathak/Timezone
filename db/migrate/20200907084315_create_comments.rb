class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comm_name
      t.string :comm_text
      t.references :user, foreign_key: true
      t.references :timesheet, foreign_key: true

      t.timestamps
    end
  end
end
