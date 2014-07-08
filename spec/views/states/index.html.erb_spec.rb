require 'rails_helper'

RSpec.describe "states/index", :type => :view do
  before(:each) do
    assign(:states, [
      State.create!(
        :state => "State"
      ),
      State.create!(
        :state => "State"
      )
    ])
  end

  it "renders a list of states" do
    render
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
