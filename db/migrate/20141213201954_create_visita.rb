class CreateVisita < ActiveRecord::Migration
  def change
    create_table :visita do |t|
      t.integer :current_user_id
      t.integer :user_visited_id

      t.timestamps
    end
  end
end
