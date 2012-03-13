class AddGraduateIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :graduate_id, :int
  end
end
