require 'rails_helper'

RSpec.describe "issues/index", :type => :view do
  before(:each) do
    assign(:issues, [
      Issue.create!(
        :title => "Title",
        :description => "MyText",
        :website => nil
      ),
      Issue.create!(
        :title => "Title",
        :description => "MyText",
        :website => nil
      )
    ])
  end

  it "renders a list of issues" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
