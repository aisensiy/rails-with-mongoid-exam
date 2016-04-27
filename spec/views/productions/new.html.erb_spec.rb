require 'rails_helper'

RSpec.describe "productions/new", type: :view do
  before(:each) do
    assign(:production, Production.new(
      :title => "MyString",
      :price => 1.5
    ))
  end

  it "renders new production form" do
    render

    assert_select "form[action=?][method=?]", productions_path, "post" do

      assert_select "input#production_title[name=?]", "production[title]"

      assert_select "input#production_price[name=?]", "production[price]"
    end
  end
end
