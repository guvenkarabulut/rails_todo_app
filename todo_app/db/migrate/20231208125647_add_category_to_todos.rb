class AddCategoryToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :category, :integer
    add_index :todos, :category

    # Add default value
    execute <<-SQL
      UPDATE todos
      SET category = 0
    SQL
  end
end
