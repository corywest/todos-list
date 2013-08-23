class CreateSchema < ActiveRecord::Migration
  def change 
    create_table :lists do |t|
      t.timestamps
    end

    create_table :tasks do |t|
      t.string :content, :unique => true
      t.integer :list_id
      t.timestamps
    end
  end
end
