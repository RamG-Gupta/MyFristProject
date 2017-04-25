class ChangeProductsPrice < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :name, :string
    add_index :articles, :name
  end
 def up
    change_table :articles do |t|
      t.change :text, :string
    end
  end
 
  def down
    change_table :articles do |t|
      t.change :text, :integer
    end
  end
end
