class CreatePeeps < ActiveRecord::Migration
  def change
    create_table :peeps do |t|
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
