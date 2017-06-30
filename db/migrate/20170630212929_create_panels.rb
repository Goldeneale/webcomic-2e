class CreatePanels < ActiveRecord::Migration[5.0]
  def change
    create_table :panels do |t|
      t.string :title
      t.integer :width
      t.integer :height
      t.integer :page
      t.string :hovertext
      t.text :comment

      t.timestamps
    end
    add_index :panels, :page, unique: true
  end
end
