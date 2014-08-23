class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :money
      t.belongs_to :campaign, index: true

      t.timestamps
    end
  end
end
