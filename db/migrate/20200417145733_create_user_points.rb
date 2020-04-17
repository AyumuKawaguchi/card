class CreateUserPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :user_points do |t|
      t.references :user, foreign_key: true
      t.integer :amount
      t.datetime :expired_at
      t.timestamps
    end
  end
end
