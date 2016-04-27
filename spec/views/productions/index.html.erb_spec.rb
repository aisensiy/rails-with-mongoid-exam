require 'rails_helper'

RSpec.describe "productions/index", type: :view do
  before(:each) do
    assign(:productions, [
      Production.create!(
        :title => "Title",
        :price => 1.5
      ),
      Production.create!(
        :title => "Title",
        :price => 1.5
      )
    ])
  end

  it "renders a list of productions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
