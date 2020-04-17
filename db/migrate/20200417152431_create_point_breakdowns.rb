class CreatePointBreakdowns < ActiveRecord::Migration[5.2]
  def change
    create_table :point_breakdowns do |t|
      t.references :user_point, foreign_key: true
      t.references :point_history, foreign_key: true
      t.integer :amount
      t.timestamps
    end
  end
end
