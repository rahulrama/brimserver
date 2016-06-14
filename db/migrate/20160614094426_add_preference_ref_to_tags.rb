class AddPreferenceRefToTags < ActiveRecord::Migration[5.0]
  def change
    add_reference :tags, :preference, foreign_key: true
  end
end
