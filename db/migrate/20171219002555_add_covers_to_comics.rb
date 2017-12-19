class AddCoversToComics < ActiveRecord::Migration[5.1]
  def self.up
    change_table :comics do |t|
      t.attachment :cover
    end
  end

  def self.down
    drop_attached_file :comics, :cover
  end
end
