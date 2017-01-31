class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :goal
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :active
      t.string :video_link

      t.timestamps
    end
  end
end
