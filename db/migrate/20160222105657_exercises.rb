class Exercise < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :difficulty
      t.integer :reps
      t.string :description
      t.string :youtube_url
    end
  end
end
