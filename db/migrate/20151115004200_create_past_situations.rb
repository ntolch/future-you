class CreatePastSituations < ActiveRecord::Migration
  def change
    create_table :past_situations do |t|
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
