class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :hex
      t.string :group
      t.boolean :starred
      t.string :website_placement
      t.string :status
      t.text :notes
      t.boolean :as_gradient
      t.string :gradient_css

      t.timestamps
    end
  end
end
