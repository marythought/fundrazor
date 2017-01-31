class AddTextToSolicitations < ActiveRecord::Migration[5.0]
  def change
    add_column :solicitations, :text, :text
  end
end
