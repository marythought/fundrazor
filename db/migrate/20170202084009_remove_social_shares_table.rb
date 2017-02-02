class RemoveSocialSharesTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :social_shares
  end
end
