require 'spec_helper'

describe "alimentacaos/index" do
  before(:each) do
    assign(:alimentacaos, [
      stub_model(Alimentacao,
        :calorias => "Calorias",
        :tipo => "Tipo",
        :pessoa => nil
      ),
      stub_model(Alimentacao,
        :calorias => "Calorias",
        :tipo => "Tipo",
        :pessoa => nil
      )
    ])
  end

  it "renders a list of alimentacaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Calorias".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
