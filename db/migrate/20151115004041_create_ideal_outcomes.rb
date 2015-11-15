class CreateIdealOutcomes < ActiveRecord::Migration
  def change
    create_table :ideal_outcomes do |t|
      t.references :new_situation, index: true, foreign_key: true
      t.references :recommended_decision, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
