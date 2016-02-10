class AddIdToClips < ActiveRecord::Migration
  def change
    add_column :clips, :category_id, :integer
  end
end
