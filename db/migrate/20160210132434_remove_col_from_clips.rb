class RemoveColFromClips < ActiveRecord::Migration
  def change
    remove_column :clips, :genre_id, :string
  end
end
