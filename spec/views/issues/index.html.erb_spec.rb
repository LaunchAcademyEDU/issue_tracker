require 'spec_helper'

describe "issues/index" do
  before(:each) do
    assign(:issues, [
      stub_model(Issue,
        :title => "Title",
        :description => "MyText",
        :is_reproducible => false,
        :category => "Category"
      ),
      stub_model(Issue,
        :title => "Title",
        :description => "MyText",
        :is_reproducible => false,
        :category => "Category"
      )
    ])
  end

  it "renders a list of issues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
