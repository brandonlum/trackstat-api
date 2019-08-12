class CreateScorecards < ActiveRecord::Migration[6.0]
  def change
    create_table :scorecards do |t|
      t.string :course_name
      t.date :date_played
      t.integer :front_nine_score
      t.integer :back_nine_score
      t.integer :combined_score
      t.integer :front_par
      t.integer :back_par
      t.integer :total_par
      t.integer :user_id

      t.timestamps
    end
  end
end
