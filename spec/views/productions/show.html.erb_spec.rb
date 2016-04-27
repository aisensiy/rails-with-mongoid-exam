require 'rails_helper'

RSpec.describe "productions/show", type: :view do
  before(:each) do
    @production = assign(:production, Production.create!(
      :title => "Title",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1.5/)
  end
end
