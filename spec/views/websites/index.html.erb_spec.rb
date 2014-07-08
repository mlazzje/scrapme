require 'rails_helper'

RSpec.describe "websites/index", :type => :view do
  before(:each) do
    assign(:websites, [
      Website.create!(
        :website => "Website",
        :owner => "Owner",
        :manager => "Manager",
        :name => "Name"
      ),
      Website.create!(
        :website => "Website",
        :owner => "Owner",
        :manager => "Manager",
        :name => "Name"
      )
    ])
  end

  it "renders a list of websites" do
    render
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "Manager".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
