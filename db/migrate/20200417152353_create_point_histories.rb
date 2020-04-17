class CreatePointHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :point_histories do |t|
      t.references :user, foreign_key: true
      t.integer :amount
      t.string :type
      t.references :type, foreign_key: :true
      t.timestamps
    end
  end
end
