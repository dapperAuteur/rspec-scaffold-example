require 'rails_helper'

RSpec.describe "samples/new", type: :view do
  before(:each) do
    assign(:sample, Sample.new(
      :int_attr => 1,
      :str_attr => "MyString"
    ))
  end

  it "renders new sample form" do
    render

    assert_select "form[action=?][method=?]", samples_path, "post" do

      assert_select "input#sample_int_attr[name=?]", "sample[int_attr]"

      assert_select "input#sample_str_attr[name=?]", "sample[str_attr]"
    end
  end
end
