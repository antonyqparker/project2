class CreateRoutine < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.integer :user_id
      t.string :description
      t.string :difficulty
      t.string :name
      t.time :duration
    end
  end
end
