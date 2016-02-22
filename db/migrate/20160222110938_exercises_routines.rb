class ExercisesRoutines < ActiveRecord::Migration
  def change
    create_join_table :exercises, :routines
  end
end
