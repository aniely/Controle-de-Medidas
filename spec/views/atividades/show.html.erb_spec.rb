require 'spec_helper'

describe "atividades/show" do
  before(:each) do
    @atividade = assign(:atividade, stub_model(Atividade,
      :nomeat => "Nomeat",
      :tipo => "Tipo",
      :calorias => "Calorias",
      :horas => "Horas",
      :pessoa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomeat/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Calorias/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Horas/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
