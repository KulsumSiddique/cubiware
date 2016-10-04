class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.references :category
      t.references :channel

      t.timestamps
    end
  end
end
