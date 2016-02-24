class ChangingField < ActiveRecord::Migration
  def change
    remove_column :routines, :duration
    add_column :routines, :duration, :integer, default: 0
  end
end
