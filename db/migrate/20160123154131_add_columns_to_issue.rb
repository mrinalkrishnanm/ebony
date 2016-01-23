class AddColumnsToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :title, :string
    add_column :issues, :priority, :string
    add_column :issues, :project_id, :integer
  end
end
