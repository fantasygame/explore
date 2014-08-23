class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :exp
      t.belongs_to :user, index: true
      t.belongs_to :campaign, index: true

      t.timestamps
    end
  end
end
