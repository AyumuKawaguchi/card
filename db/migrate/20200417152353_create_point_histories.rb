class CreatePointHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :point_histories do |t|

      t.timestamps
    end
  end
end
