require 'rails_helper'

RSpec.describe "websites/show", :type => :view do
  before(:each) do
    @website = assign(:website, Website.create!(
      :website => "Website",
      :owner => "Owner",
      :manager => "Manager",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/Manager/)
    expect(rendered).to match(/Name/)
  end
end
