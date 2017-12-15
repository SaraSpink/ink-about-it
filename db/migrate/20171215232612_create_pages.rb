class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.column :number, :integer
      t.column :comic_id, :integer

      t.timestamps
    end
  end
end
