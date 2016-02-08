class AddColToClips < ActiveRecord::Migration
  def change
    add_column :clips, :genre_id, :integer
  end
end
