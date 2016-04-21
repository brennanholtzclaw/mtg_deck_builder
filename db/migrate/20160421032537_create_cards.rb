class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :manacost
      t.string :colors
      t.integer :cmc
      t.string :type
      t.string :rarity
      t.string :set
      t.string :text
      t.string :flavor
      t.string :multiverseid
      t.integer :power
      t.integer :toughness
      t.string :imageUrl
      t.string :layout
      t.string :names, array: true, default: []

      t.timestamps null: false
    end
  end
end
