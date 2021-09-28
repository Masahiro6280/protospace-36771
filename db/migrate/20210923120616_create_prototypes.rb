class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.string :title,                 null: false
      t.text :catch_copy,              null: false
      t.text :concept,                 null: false 
      t.references :user, foreign_key: true,null: false
      # rails db:migrateを実行した後に、修正した
    end
  end
end
