class AddPriorityProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :priority, :string
  end
end
