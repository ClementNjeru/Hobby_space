class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.integer :vote_average
      t.timestamps
    end
  end
end
