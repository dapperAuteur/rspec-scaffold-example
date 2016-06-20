require 'rails_helper'

RSpec.describe "samples/index", type: :view do
  before(:each) do
    assign(:samples, [
      Sample.create!(
        :int_attr => 1,
        :str_attr => "Str Attr"
      ),
      Sample.create!(
        :int_attr => 1,
        :str_attr => "Str Attr"
      )
    ])
  end

  it "renders a list of samples" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Str Attr".to_s, :count => 2
  end
end
