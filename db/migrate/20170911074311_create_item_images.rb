class CreateItemImages < ActiveRecord::Migration[5.0]
  def change
    create_table :item_images do |t|
      t.string    :image, null:false
      t.integer   :item_id, null: false

      t.timestamps
    end
  end
end
