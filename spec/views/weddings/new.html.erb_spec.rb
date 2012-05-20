require 'spec_helper'

describe "weddings/new" do
  before(:each) do
    assign(:wedding, stub_model(Wedding,
      :couple_id => 1,
      :title => "MyString",
      :story => "MyText",
      :groom_name => "MyString",
      :bride_name => "MyString"
    ).as_new_record)
  end

  it "renders new wedding form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weddings_path, :method => "post" do
      assert_select "input#wedding_couple_id", :name => "wedding[couple_id]"
      assert_select "input#wedding_title", :name => "wedding[title]"
      assert_select "textarea#wedding_story", :name => "wedding[story]"
      assert_select "input#wedding_groom_name", :name => "wedding[groom_name]"
      assert_select "input#wedding_bride_name", :name => "wedding[bride_name]"
    end
  end
end
