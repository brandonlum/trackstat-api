class CreateScorecards < ActiveRecord::Migration[6.0]
  def change
    create_table :scorecards do |t|
      t.string :coursename
      t.date :date
      t.integer :frontnine
      t.integer :backnine
      t.integer :combined
      t.integer :par
      t.integer :user_id

      t.timestamps
    end
  end
end
