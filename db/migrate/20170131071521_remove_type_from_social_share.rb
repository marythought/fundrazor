class RemoveTypeFromSocialShare < ActiveRecord::Migration[5.0]
  def change
    remove_column :social_shares, :type, :string
  end
end
