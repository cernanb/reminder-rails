class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.datetime :dob
      t.timestamps
    end
  end
end
