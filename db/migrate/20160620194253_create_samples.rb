class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.integer :int_attr
      t.string :str_attr

      t.timestamps null: false
    end
  end
end
