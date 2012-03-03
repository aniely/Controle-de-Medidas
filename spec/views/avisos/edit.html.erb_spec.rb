require 'spec_helper'

describe "avisos/edit" do
  before(:each) do
    @aviso = assign(:aviso, stub_model(Aviso,
      :data => "MyString",
      :descricao => "MyString",
      :pessoa => nil
    ))
  end

  it "renders the edit aviso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => avisos_path(@aviso), :method => "post" do
      assert_select "input#aviso_data", :name => "aviso[data]"
      assert_select "input#aviso_descricao", :name => "aviso[descricao]"
      assert_select "input#aviso_pessoa", :name => "aviso[pessoa]"
    end
  end
end
