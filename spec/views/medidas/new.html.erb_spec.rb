require 'spec_helper'

describe "medidas/new" do
  before(:each) do
    assign(:medida, stub_model(Medida,
      :peso => "MyString",
      :altura => "MyString",
      :medida => "MyString",
      :pessoa => nil
    ).as_new_record)
  end

  it "renders new medida form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => medidas_path, :method => "post" do
      assert_select "input#medida_peso", :name => "medida[peso]"
      assert_select "input#medida_altura", :name => "medida[altura]"
      assert_select "input#medida_medida", :name => "medida[medida]"
      assert_select "input#medida_pessoa", :name => "medida[pessoa]"
    end
  end
end
