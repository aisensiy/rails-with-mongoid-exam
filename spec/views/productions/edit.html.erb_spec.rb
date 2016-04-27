require 'rails_helper'

RSpec.describe "productions/edit", type: :view do
  before(:each) do
    @production = assign(:production, Production.create!(
      :title => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit production form" do
    render

    assert_select "form[action=?][method=?]", production_path(@production), "post" do

      assert_select "input#production_title[name=?]", "production[title]"

      assert_select "input#production_price[name=?]", "production[price]"
    end
  end
end
