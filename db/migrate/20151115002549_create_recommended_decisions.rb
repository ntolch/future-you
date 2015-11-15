class CreateRecommendedDecisions < ActiveRecord::Migration
  def change
    create_table :recommended_decisions do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
