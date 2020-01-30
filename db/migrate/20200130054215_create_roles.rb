class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.integer :title, default: 0

      t.timestamps
    end
  end
end
