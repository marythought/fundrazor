class AddMainImageToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :main_image, :string
  end
end
