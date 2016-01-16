class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.references :so, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
