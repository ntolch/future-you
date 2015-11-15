class CreateUserDecisions < ActiveRecord::Migration
  def change
    create_table :user_decisions do |t|
      t.string :choice

      t.timestamps null: false
    end
  end
end
