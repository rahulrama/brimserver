class CreateSearchesTagsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :searches_tags, :id => false do |t|
      t.integer :search_id
      t.integer :tag_id
    end
  end
end
