require 'rails_helper'

RSpec.describe "websites/new", :type => :view do
  before(:each) do
    assign(:website, Website.new(
      :website => "MyString",
      :owner => "MyString",
      :manager => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new website form" do
    render

    assert_select "form[action=?][method=?]", websites_path, "post" do

      assert_select "input#website_website[name=?]", "website[website]"

      assert_select "input#website_owner[name=?]", "website[owner]"

      assert_select "input#website_manager[name=?]", "website[manager]"

      assert_select "input#website_name[name=?]", "website[name]"
    end
  end
end
