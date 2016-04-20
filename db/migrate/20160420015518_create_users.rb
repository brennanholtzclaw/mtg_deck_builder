class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :display_name
      t.string :image
      t.string :oauth_token

      t.timestamps null: false
    end
  end
end
