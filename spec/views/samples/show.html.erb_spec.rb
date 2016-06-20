require 'rails_helper'

RSpec.describe "samples/show", type: :view do
  before(:each) do
    @sample = assign(:sample, Sample.create!(
      :int_attr => 1,
      :str_attr => "Str Attr"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Str Attr/)
  end
end
