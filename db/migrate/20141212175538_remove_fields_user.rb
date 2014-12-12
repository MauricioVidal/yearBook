class RemoveFieldsUser < ActiveRecord::Migration
  def change
  	    remove_column :users, :foto
  end
end
