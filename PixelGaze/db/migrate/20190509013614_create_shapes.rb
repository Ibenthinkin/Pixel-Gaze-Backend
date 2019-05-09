class CreateShapes < ActiveRecord::Migration[5.2]
  def change
    create_table :shapes do |t|
      t.string :title
      t.string :imageURL

      t.timestamps
    end
  end
end
