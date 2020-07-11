class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
