require 'spec_helper'

describe "pessoas/new" do
  before(:each) do
    assign(:pessoa, stub_model(Pessoa,
      :nome => "MyString",
      :sexo => "MyString",
      :cpd => "MyString",
      :telefone => "MyString",
      :datanascimento => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new pessoa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pessoas_path, :method => "post" do
      assert_select "input#pessoa_nome", :name => "pessoa[nome]"
      assert_select "input#pessoa_sexo", :name => "pessoa[sexo]"
      assert_select "input#pessoa_cpd", :name => "pessoa[cpd]"
      assert_select "input#pessoa_telefone", :name => "pessoa[telefone]"
      assert_select "input#pessoa_datanascimento", :name => "pessoa[datanascimento]"
      assert_select "input#pessoa_email", :name => "pessoa[email]"
    end
  end
end
