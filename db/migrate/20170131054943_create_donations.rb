class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.references :solicitation, foreign_key: true
      t.float :amount
      t.references :user, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
