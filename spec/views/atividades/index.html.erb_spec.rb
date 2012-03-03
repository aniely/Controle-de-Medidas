require 'spec_helper'

describe "atividades/index" do
  before(:each) do
    assign(:atividades, [
      stub_model(Atividade,
        :nomeat => "Nomeat",
        :tipo => "Tipo",
        :calorias => "Calorias",
        :horas => "Horas",
        :pessoa => nil
      ),
      stub_model(Atividade,
        :nomeat => "Nomeat",
        :tipo => "Tipo",
        :calorias => "Calorias",
        :horas => "Horas",
        :pessoa => nil
      )
    ])
  end

  it "renders a list of atividades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomeat".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Calorias".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Horas".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
