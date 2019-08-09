class CreateScorecards < ActiveRecord::Migration[6.0]
  def change
    create_table :scorecards do |t|
      t.date :date
      t.integer :frontnine
      t.integer :backnine
      t.integer :combined
      t.integer :par

      t.timestamps
    end
  end
end
