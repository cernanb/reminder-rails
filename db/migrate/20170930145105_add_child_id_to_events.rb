class AddChildIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :child_id, :integer
  end
end
