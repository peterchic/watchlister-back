class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :poster
      t.integer :runtime
      t.string :release_date
      t.text :tagline

      t.timestamps
    end
  end
end
