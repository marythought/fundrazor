class AddNetworkToSocialShare < ActiveRecord::Migration[5.0]
  def change
    add_column :social_shares, :network, :string
  end
end
