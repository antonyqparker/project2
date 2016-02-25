class ChangeTimeToIntInCreateRoutineTable < ActiveRecord::Migration
  def change
    # ALTER TABLE create_routine ALTER duration TYPE integer USING duration::int;
    rename_column :routines, :duration, :integer
  end
end
