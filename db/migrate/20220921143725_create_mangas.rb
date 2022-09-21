class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :title

      t.timestamps
    end
  end
end
