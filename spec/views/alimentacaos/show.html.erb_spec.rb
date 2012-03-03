require 'spec_helper'

describe "alimentacaos/show" do
  before(:each) do
    @alimentacao = assign(:alimentacao, stub_model(Alimentacao,
      :calorias => "Calorias",
      :tipo => "Tipo",
      :pessoa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Calorias/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
