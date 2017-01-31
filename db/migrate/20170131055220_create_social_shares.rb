class CreateSocialShares < ActiveRecord::Migration[5.0]
  def change
    create_table :social_shares do |t|
      t.references :solicitation, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
