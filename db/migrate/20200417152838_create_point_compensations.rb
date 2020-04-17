class CreatePointCompensations < ActiveRecord::Migration[5.2]
  def change
    create_table :point_compensations do |t|
      t.references :admin, foreign_key: true
      t.text :explanation
      t.dateime :created_at
    end
  end
end
