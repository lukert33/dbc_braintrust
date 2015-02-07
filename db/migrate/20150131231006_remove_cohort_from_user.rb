class RemoveCohortFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :cohort
    add_column :users, :cohort_id, :integer
  end
end
