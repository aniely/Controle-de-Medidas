# coding: utf-8

require 'spec_helper'

feature 'gerenciar alimentacao' do
  before :each do
  end
 
  scenario 'incluir alimentacao' do

   
    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely') 
 
    visit new_alimentacao_path

    fill_in 'Calorias', :with => '100'
    fill_in 'Tipo', :with => 'legumes'
    select  'Aniely', :on => 'Nome' 
       
    click_button 'Salvar'
  
  
    page.should have_content 'Calorias: 100'
    page.should have_content 'Tipo: legumes'
    page.should have_content 'Nome: Aniely'
  end

    scenario 'alterar alimentacao' do #, :javascript => true do

    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely')
    alimentacao = FactoryGirl.create(:alimentacao, :pessoa => pessoa)

    visit edit_alimentacao_path(alimentacao)

    preencher_e_verificar_alimentacao

  end
  
    scenario 'excluir alimentacao' do #, :javascript => true do

    pessoa = FactoryGirl.create(:pessoa,:nome => 'Aniely')
    alimentacao = FactoryGirl.create(:alimentacao, :pessoa => pessoa)
    
    visit alimentacaos_path
    click_link 'Excluir'

  end

    def preencher_e_verificar_alimentacao

    fill_in 'Calorias', :with => '100'
    fill_in 'Tipo', :with => 'legumes'
    select  'Aniely', :on => 'Nome'         
   
    click_button 'Salvar'
   
   
    page.should have_content 'Calorias: 100'
    page.should have_content 'Tipo: legumes'
    page.should have_content 'Nome: Aniely'

  end

end
