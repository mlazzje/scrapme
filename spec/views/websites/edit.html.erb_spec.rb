require 'rails_helper'

RSpec.describe "websites/edit", :type => :view do
  before(:each) do
    @website = assign(:website, Website.create!(
      :website => "MyString",
      :owner => "MyString",
      :manager => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit website form" do
    render

    assert_select "form[action=?][method=?]", website_path(@website), "post" do

      assert_select "input#website_website[name=?]", "website[website]"

      assert_select "input#website_owner[name=?]", "website[owner]"

      assert_select "input#website_manager[name=?]", "website[manager]"

      assert_select "input#website_name[name=?]", "website[name]"
    end
  end
end
