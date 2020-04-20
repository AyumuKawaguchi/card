class CreatePointHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :point_histories do |t|
      t.bigint :user_id
      t.integer :amount
      t.string :type
      t.bigint :type_id
      t.timestamps
    end
  end
end

