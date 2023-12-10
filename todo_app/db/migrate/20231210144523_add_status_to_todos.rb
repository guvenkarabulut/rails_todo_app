class AddStatusToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :status, :integer
  end
end
