class ChangeSolicitationGoalToInt < ActiveRecord::Migration[5.0]
  def change
    change_column :solicitations, :goal, :integer
  end
end
