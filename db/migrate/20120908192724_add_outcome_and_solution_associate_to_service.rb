class AddOutcomeAndSolutionAssociateToService < ActiveRecord::Migration
  def change
    add_column :services, :outcome, :text
    add_column :services, :solution_associate, :text
  end
end
