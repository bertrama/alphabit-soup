class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.string :identifier
      t.string :label
      t.string :title
      t.string :author
      t.string :source
      t.text :body

      t.timestamps
    end
  end
end
