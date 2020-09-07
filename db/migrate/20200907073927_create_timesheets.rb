class CreateTimesheets < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheets do |t|
      t.string :time_name
      t.string :time_date
      t.string :time_for
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
