class CreateStones < ActiveRecord::Migration[5.1]
  def change
    create_table :stones do |t|
      t.string :name
      t.string :properties

      t.timestamps
    end
  end
end
