class CreateSolicitations < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitations do |t|
      t.string :goal
      t.string :main_image
      t.references :campaign, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
