class AddCategoriesToTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :washoku, :integer
    add_column :tasks, :youshoku, :integer
    add_column :tasks, :italian, :integer
    add_column :tasks, :yakiniku, :integer
    add_column :tasks, :french, :integer
    add_column :tasks, :nabe, :integer
    add_column :tasks, :medit, :integer
    add_column :tasks, :fast, :integer
    add_column :tasks, :sweet, :integer
  end
end
