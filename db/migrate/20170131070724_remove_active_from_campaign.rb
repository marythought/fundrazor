class RemoveActiveFromCampaign < ActiveRecord::Migration[5.0]
  def change
    remove_column :campaigns, :active, :boolean
  end
end
