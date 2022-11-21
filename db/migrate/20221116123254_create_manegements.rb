class CreateManegements < ActiveRecord::Migration[6.0]
  def change
    create_table :manegements do |t|
      t.integer :temperature, null: false
      t.integer :b_pressure_up, null: false
      t.integer :b_pressure_down, null: false
      t.integer :pulse, null: false
      t.integer :weight, null: false
      t.integer :sleep_id, null: false
      t.text :exercise_content, null: false
      t.timestamps
    end
  end
end
