class RemoveGraduateIdFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :graduate_id
  end

  def down
    add_column :users, :graduate_id, :int
  end
end
