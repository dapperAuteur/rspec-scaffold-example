require 'rails_helper'

RSpec.describe "samples/edit", type: :view do
  before(:each) do
    @sample = assign(:sample, Sample.create!(
      :int_attr => 1,
      :str_attr => "MyString"
    ))
  end

  it "renders the edit sample form" do
    render

    assert_select "form[action=?][method=?]", sample_path(@sample), "post" do

      assert_select "input#sample_int_attr[name=?]", "sample[int_attr]"

      assert_select "input#sample_str_attr[name=?]", "sample[str_attr]"
    end
  end
end
