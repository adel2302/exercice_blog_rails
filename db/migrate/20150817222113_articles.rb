class Articles < ActiveRecord::Migration
  def change
  	create_table :articles 
  	add_column :articles, :title, :string
  	add_column :articles, :text, :text
  end
end