require 'spec_helper'

describe "alimentacaos/new" do
  before(:each) do
    assign(:alimentacao, stub_model(Alimentacao,
      :calorias => "MyString",
      :tipo => "MyString",
      :pessoa => nil
    ).as_new_record)
  end

  it "renders new alimentacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alimentacaos_path, :method => "post" do
      assert_select "input#alimentacao_calorias", :name => "alimentacao[calorias]"
      assert_select "input#alimentacao_tipo", :name => "alimentacao[tipo]"
      assert_select "input#alimentacao_pessoa", :name => "alimentacao[pessoa]"
    end
  end
end
