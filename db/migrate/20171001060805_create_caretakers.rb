class CreateCaretakers < ActiveRecord::Migration[5.1]
  def change
    create_table :caretakers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.timestamps
    end
  end
end
