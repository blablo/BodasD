require 'spec_helper'

describe "weddings/index" do
  before(:each) do
    assign(:weddings, [
      stub_model(Wedding,
        :couple_id => 1,
        :title => "Title",
        :story => "MyText",
        :groom_name => "Groom Name",
        :bride_name => "Bride Name"
      ),
      stub_model(Wedding,
        :couple_id => 1,
        :title => "Title",
        :story => "MyText",
        :groom_name => "Groom Name",
        :bride_name => "Bride Name"
      )
    ])
  end

  it "renders a list of weddings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Groom Name".to_s, :count => 2
    assert_select "tr>td", :text => "Bride Name".to_s, :count => 2
  end
end
