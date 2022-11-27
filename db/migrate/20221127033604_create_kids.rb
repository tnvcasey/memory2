class CreateKids < ActiveRecord::Migration[7.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :age
      t.string :img_src

      t.timestamps
    end
  end
end
