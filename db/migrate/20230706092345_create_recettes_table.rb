class CreateRecettesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :recettes do |t|
      t.string :nom

      t.timestamps
    end
  end
end
