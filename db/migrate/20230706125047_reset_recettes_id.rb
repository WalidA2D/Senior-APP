class ResetRecettesId < ActiveRecord::Migration[7.0]
  def change
   
    remove_column :recettes, :id
    execute "ALTER TABLE recettes AUTO_INCREMENT = 1"
    add_column :recettes, :id, :primary_key

    
  end
end
