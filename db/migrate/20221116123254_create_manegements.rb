class CreateManegements < ActiveRecord::Migration[6.0]
  def change
    create_table :manegements do |t|

      t.timestamps
    end
  end
end
