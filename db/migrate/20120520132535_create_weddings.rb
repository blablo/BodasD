class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.integer :couple_id
      t.string :title
      t.text :story
      t.string :groom_name
      t.string :bride_name

      t.timestamps
    end
  end
end
