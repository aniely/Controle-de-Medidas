require 'spec_helper'

describe "avisos/show" do
  before(:each) do
    @aviso = assign(:aviso, stub_model(Aviso,
      :data => "Data",
      :descricao => "Descricao",
      :pessoa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
