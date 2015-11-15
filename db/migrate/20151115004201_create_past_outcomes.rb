class CreatePastOutcomes < ActiveRecord::Migration
  def change
    create_table :past_outcomes do |t|
      t.references :past_situation, index: true, foreign_key: true
      t.references :user_decision, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
