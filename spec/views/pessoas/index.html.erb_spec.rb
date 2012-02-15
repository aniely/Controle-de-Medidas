require 'spec_helper'

describe "pessoas/index" do
  before(:each) do
    assign(:pessoas, [
      stub_model(Pessoa,
        :nome => "Nome",
        :sexo => "Sexo",
        :cpd => "Cpd",
        :telefone => "Telefone",
        :datanascimento => "Datanascimento",
        :email => "Email"
      ),
      stub_model(Pessoa,
        :nome => "Nome",
        :sexo => "Sexo",
        :cpd => "Cpd",
        :telefone => "Telefone",
        :datanascimento => "Datanascimento",
        :email => "Email"
      )
    ])
  end

  it "renders a list of pessoas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpd".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Datanascimento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
