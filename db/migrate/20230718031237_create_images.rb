class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :image
      t.string :url
      t.text :base64 

      t.timestamps
    end
  end
end
