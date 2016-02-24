class ChangeNameOfField < ActiveRecord::Migration
  def change
    rename_column :routines, :integer, :duration
  end
end
