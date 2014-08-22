class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :money
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
