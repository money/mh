# frozen_string_literal: true

# create pages
class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :aasm_state
      t.string :slug
      t.string :type
      t.text :content
      t.integer :parent_id
      t.integer :position, default: 0
      t.string :layout

      t.timestamps
    end
  end
end
