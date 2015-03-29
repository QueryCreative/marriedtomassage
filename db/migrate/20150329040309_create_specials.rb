class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
    	t.text :content
    	t.string :title
    	t.string :external_link
    	t.timestamps null: false
    	t.datetime :published_at
    end
  end
end
