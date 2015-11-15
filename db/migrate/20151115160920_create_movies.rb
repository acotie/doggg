class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :duration
      t.integer :series_id

      t.timestamps null: false
    end
  end
end
