class AddCaretakerIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :caretaker_id, :integer
  end
end
