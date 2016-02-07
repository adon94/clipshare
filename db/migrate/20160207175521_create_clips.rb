class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :title
      t.text :eurl

      t.timestamps null: false
    end
  end
end
