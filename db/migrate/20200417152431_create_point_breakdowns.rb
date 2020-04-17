class CreatePointBreakdowns < ActiveRecord::Migration[5.2]
  def change
    create_table :point_breakdowns do |t|

      t.timestamps
    end
  end
end
