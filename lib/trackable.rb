module Trackable
  def goal_met?
    amount_raised > goal
  end

  def amount_needed
    goal - amount_raised
  end
end
