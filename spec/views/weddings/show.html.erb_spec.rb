require 'spec_helper'

describe "weddings/show" do
  before(:each) do
    @wedding = assign(:wedding, stub_model(Wedding,
      :couple_id => 1,
      :title => "Title",
      :story => "MyText",
      :groom_name => "Groom Name",
      :bride_name => "Bride Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Groom Name/)
    rendered.should match(/Bride Name/)
  end
end
