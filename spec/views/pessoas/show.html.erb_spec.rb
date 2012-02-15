require 'spec_helper'

describe "pessoas/show" do
  before(:each) do
    @pessoa = assign(:pessoa, stub_model(Pessoa,
      :nome => "Nome",
      :sexo => "Sexo",
      :cpd => "Cpd",
      :telefone => "Telefone",
      :datanascimento => "Datanascimento",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sexo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cpd/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datanascimento/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
