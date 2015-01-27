class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text :plot
      t.text :image_url

      t.timestamps
      
    end
  end
end
