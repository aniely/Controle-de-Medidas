# coding: utf-8

require 'spec_helper'

feature 'gerenciar pessoa' do
  before :each do
  end

 scenario 'incluir pessoa' do
    visit new_pessoa_path
    
    fill_in "nome", :with => 'Aniely'
    fill_in "sexo", :with => 'feminino'
    fill_in "cpd", :with =>'21221221'
    fill_in "telefone", :with => '1111111'
    fill_in "datanascimento", :with => '12/11/1991'
    fill_in "email", :with => 'aniely@mail.com'

    click_button 'Salvar'

    page.should have_content 'Nome: Aniely'
    page.should have_content 'Sexo: feminino'
    page.should have_content 'Cpd: 21221221'
    page.should have_content 'Telefone: 1111111'
    page.should have_content 'Datanascimento: 12/11/1991'
    page.should have_content 'Email: aniely@mail.com'

 end

  scenario 'alterar pessoa' do #, :javascript => true do
    pessoa = FactoryGirl.create(:pessoa)
    visit edit_pessoa_path(pessoa)

    fill_in "nome", :with => 'Aniely'
    fill_in "sexo", :with => 'feminino'
    fill_in "cpd", :with =>'21221221'
    fill_in "telefone", :with => '1111111'
    fill_in "datanascimento", :with => '12/11/1991'
    fill_in "email", :with => 'aniely@mail.com'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Aniely'
    page.should have_content 'Sexo: feminino'
    page.should have_content 'Cpd: 21221221'
    page.should have_content 'Telefone: 1111111'
    page.should have_content 'Datanascimento: 12/11/1991'
    page.should have_content 'Email: aniely@mail.com'
    
  end
    scenario 'excluir pessoa' do #, :javascript => true do
    pessoa = FactoryGirl.create(:pessoa)
    visit pessoas_path

    click_link 'Excluir'
    
    Pessoa.count.should == 0
  end


end

