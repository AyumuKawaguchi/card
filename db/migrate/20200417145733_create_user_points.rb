class CreateUserPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :user_points do |t|
      t.bigint :user_id
      t.integer :amount
      t.datetime :expired_at
      t.timestamps
    end
  end
end
