class CreateUserPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :user_points do |t|

      t.timestamps
    end
  end
end
