require 'spec_helper'

describe "medidas/index" do
  before(:each) do
    assign(:medidas, [
      stub_model(Medida,
        :peso => "Peso",
        :altura => "Altura",
        :medida => "Medida",
        :pessoa => nil
      ),
      stub_model(Medida,
        :peso => "Peso",
        :altura => "Altura",
        :medida => "Medida",
        :pessoa => nil
      )
    ])
  end

  it "renders a list of medidas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Peso".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Altura".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Medida".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
