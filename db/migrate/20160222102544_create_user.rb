class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :age
      t.string :gender
      t.string :level
      t.string :photo_url

      t.timestamps
    end
  end
end