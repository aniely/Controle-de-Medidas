require 'spec_helper'

describe "medidas/show" do
  before(:each) do
    @medida = assign(:medida, stub_model(Medida,
      :peso => "Peso",
      :altura => "Altura",
      :medida => "Medida",
      :pessoa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Peso/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Altura/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Medida/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
