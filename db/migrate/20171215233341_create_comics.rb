class CreateComics < ActiveRecord::Migration[5.1]
  def change
    create_table :comics do |t|
      t.column :title, :string
      t.column :description, :text
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
