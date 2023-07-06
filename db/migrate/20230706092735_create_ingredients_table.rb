class CreateIngredientsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :nom

      t.timestamps
    end
  end
end
