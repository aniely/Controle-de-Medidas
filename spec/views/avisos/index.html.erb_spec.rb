require 'spec_helper'

describe "avisos/index" do
  before(:each) do
    assign(:avisos, [
      stub_model(Aviso,
        :data => "Data",
        :descricao => "Descricao",
        :pessoa => nil
      ),
      stub_model(Aviso,
        :data => "Data",
        :descricao => "Descricao",
        :pessoa => nil
      )
    ])
  end

  it "renders a list of avisos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
