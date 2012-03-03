require 'spec_helper'

describe "atividades/new" do
  before(:each) do
    assign(:atividade, stub_model(Atividade,
      :nomeat => "MyString",
      :tipo => "MyString",
      :calorias => "MyString",
      :horas => "MyString",
      :pessoa => nil
    ).as_new_record)
  end

  it "renders new atividade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => atividades_path, :method => "post" do
      assert_select "input#atividade_nomeat", :name => "atividade[nomeat]"
      assert_select "input#atividade_tipo", :name => "atividade[tipo]"
      assert_select "input#atividade_calorias", :name => "atividade[calorias]"
      assert_select "input#atividade_horas", :name => "atividade[horas]"
      assert_select "input#atividade_pessoa", :name => "atividade[pessoa]"
    end
  end
end
