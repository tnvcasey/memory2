class CreateMemories < ActiveRecord::Migration[7.0]
  def change
    create_table :memories do |t|
      t.string :body
      t.integer :kid_id
      t.string :date

      t.timestamps
    end
  end
end
