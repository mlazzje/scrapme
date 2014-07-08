class CreateIssuesStates < ActiveRecord::Migration
  def change
    create_table :issues_states do |t|
      t.belongs_to :issue, index: true
      t.belongs_to :state, index: true
    end
  end
end
