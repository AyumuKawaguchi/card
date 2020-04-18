class CreatePointCompensations < ActiveRecord::Migration[5.2]
  def change
    create_table :point_compensations do |t|
      t.bigint :admin
      t.text :explanation
      t.datetime :created_at
    end
  end
end
